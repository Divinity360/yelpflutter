import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:login_cubit/core/constants/constants.dart';
import 'package:login_cubit/core/error/response_state.dart';
import 'package:login_cubit/features/restaurants/domain/entities/restaurant.dart';
import 'package:login_cubit/features/restaurants/domain/repositories/yelp_repository.dart';

part 'mystery_search_event.dart';

part 'mystery_search_state.dart';

part 'mystery_search_bloc.g.dart';

part 'mystery_search_bloc.freezed.dart';

enum MysterySearchStatus {
  initial,
  searchInProgress,
  revealingSearch,
  searchSuccessful,
  searchFailed;

  bool get isLoading => this == MysterySearchStatus.searchInProgress;

  bool get revealing => this == MysterySearchStatus.revealingSearch;

  bool get isSuccessful => this == MysterySearchStatus.searchSuccessful;

  bool get inProgressAndRevealing =>
      this == MysterySearchStatus.searchInProgress ||
      this == MysterySearchStatus.revealingSearch;
}

class MysterySearchBloc extends Bloc<MysterySearchEvent, MysterySearchState> {
  MysterySearchBloc(this._yelpRepository) : super(MysterySearchState()) {
    on<_RestaurantSearched>(_onRestaurantSearched);
    on<_RestaurantRevealed>(_onRestaurantRevealed);
    on<_RevealTimerUpdated>(_onRevealTimerUpdated);
  }

  final YelpRepository _yelpRepository;

  Timer? _revealTimer;

  /// Restaurant searched
  Future _onRestaurantSearched(
      _RestaurantSearched event, Emitter<MysterySearchState> emit) async {
    emit(state.copyWith(status: MysterySearchStatus.searchInProgress));
    final response = await _yelpRepository.searchRestaurants(
        location: event.location, term: event.term);
    if (response is ResponseSuccess) {
      if (response.data!.isNotEmpty) {
        add(MysterySearchEvent.restaurantRevealed(response.data![0]));
      } else {
        emit(state.copyWith(
            status: MysterySearchStatus.searchFailed,
            error: Constants.emptyRestaurantList));
      }
    } else {
      emit(state.copyWith(
          status: MysterySearchStatus.searchFailed, error: response.error));
    }
  }

  @override
  Future<void> close() {
    _revealTimer?.cancel();
    return super.close();
  }

  /// Run three second timer then emit search success state
  Future _onRestaurantRevealed(
      _RestaurantRevealed event, Emitter<MysterySearchState> emit) async {
    _revealTimer = Timer.periodic(Duration(seconds: 1), (timer) {
      add(
        MysterySearchEvent.revealTimerUpdated(
            Constants.defaultRevealCounter - timer.tick, event.restaurant),
      );
    });
  }

  /// Update reveal timer
  Future _onRevealTimerUpdated(
      _RevealTimerUpdated event, Emitter<MysterySearchState> emit) async {
    log(event.toString());
    if (event.counter > 0) {
      emit(state.copyWith(
        status: MysterySearchStatus.revealingSearch,
        revealCounter: event.counter,
      ));
    } else {
      _revealTimer?.cancel();
      emit(state.copyWith(
          status: MysterySearchStatus.searchSuccessful,
          restaurant: event.restaurant));
    }
  }
}
