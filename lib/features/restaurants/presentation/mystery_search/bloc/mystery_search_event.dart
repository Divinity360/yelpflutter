part of 'mystery_search_bloc.dart';

@freezed
abstract class MysterySearchEvent with _$MysterySearchEvent {
  const factory MysterySearchEvent.restaurantSearched(
      {@Default('') String location,
      @Default('') String term,
      String? openNow,
      int? radius}) = _RestaurantSearched;

  const factory MysterySearchEvent.restaurantRevealed(Restaurant restaurant) = _RestaurantRevealed;
  const factory MysterySearchEvent.revealTimerUpdated(int counter, Restaurant restaurant) = _RevealTimerUpdated;
}
