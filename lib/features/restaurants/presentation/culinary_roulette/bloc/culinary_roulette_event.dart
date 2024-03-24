part of 'culinary_roulette_bloc.dart';

@freezed
abstract class CulinaryRouletteEvent with _$CulinaryRouletteEvent {
  const factory CulinaryRouletteEvent.rouletteRestaurantSearched(
      {@Default('') String location,
        @Default('') String term,
        TickerProvider? vsync,
        String? openNow,
        int? radius}) = _RouletteRestaurantSearched;
  const factory CulinaryRouletteEvent.selectedRestaurantSet(Restaurant restaurant) = _SelectedRestaurantSet;

}
