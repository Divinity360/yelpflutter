import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:login_cubit/core/constants/constants.dart';
import 'package:login_cubit/core/error/response_state.dart';
import 'package:login_cubit/core/theme/theme.dart';
import 'package:login_cubit/core/utils/colors.dart';
import 'package:login_cubit/features/restaurants/domain/entities/restaurant.dart';
import 'package:login_cubit/features/restaurants/domain/repositories/yelp_repository.dart';
import 'package:roulette/roulette.dart';

part 'culinary_roulette_event.dart';

part 'culinary_roulette_state.dart';

part 'culinary_roulette_bloc.g.dart';

part 'culinary_roulette_bloc.freezed.dart';

enum CulinaryRouletteStatus {
  initial,
  searchInProgress,
  spinRoulette,
  searchSuccessful,
  searchFailed;

  bool get isLoading => this == CulinaryRouletteStatus.searchInProgress;

  bool get isRouletteSpinning =>
      this == CulinaryRouletteStatus.spinRoulette;

  bool get isRouletteSpinningOrSuccessful =>
      this == CulinaryRouletteStatus.spinRoulette || this == CulinaryRouletteStatus.searchSuccessful;

  bool get isSuccessful => this == CulinaryRouletteStatus.searchSuccessful;

  bool get inProgressOrRouletteSpinning =>
      this == CulinaryRouletteStatus.searchInProgress ||
      this == CulinaryRouletteStatus.spinRoulette;
}

class CulinaryRouletteBloc
    extends Bloc<CulinaryRouletteEvent, CulinaryRouletteState> {
  CulinaryRouletteBloc(this._yelpRepository) : super(CulinaryRouletteState()) {
    on<_RouletteRestaurantSearched>(_onRouletteRestaurantSearched);
    on<_SelectedRestaurantSet>(_onSelectedRestaurantSet);
  }

  final YelpRepository _yelpRepository;

  final values = <Restaurant>[];

  /// Restaurant searched
  Future _onRouletteRestaurantSearched(_RouletteRestaurantSearched event,
      Emitter<CulinaryRouletteState> emit) async {
    emit(state.copyWith(status: CulinaryRouletteStatus.searchInProgress));
    final response = await _yelpRepository.searchRestaurants(
        location: event.location, term: event.term);
    if (response is ResponseSuccess) {
      if (response.data!.isNotEmpty) {
        emit(state.copyWith(
            status: CulinaryRouletteStatus.spinRoulette,
            restaurantList: response.data!));
      } else {
        emit(state.copyWith(
            status: CulinaryRouletteStatus.searchFailed,
            error: Constants.emptyRestaurantList));
      }
    } else {
      emit(state.copyWith(
          status: CulinaryRouletteStatus.searchFailed, error: response.error));
    }
  }

  @override
  Future<void> close() {
    return super.close();
  }

  /// Emit search successful state based on selected restaurant
  Future _onSelectedRestaurantSet(
      _SelectedRestaurantSet event, Emitter<CulinaryRouletteState> emit) async {
    emit(state.copyWith(
        status: CulinaryRouletteStatus.searchSuccessful,
        restaurantList: [event.restaurant]));
  }
}
