part of 'culinary_roulette_bloc.dart';

@freezed
abstract class CulinaryRouletteState with _$CulinaryRouletteState {
  const factory CulinaryRouletteState({
    @Default(CulinaryRouletteStatus.initial) CulinaryRouletteStatus status,
    List<Restaurant>? restaurantList,
    String? error
  }) = _CulinaryRouletteState;

  factory CulinaryRouletteState.fromJson(Map<String, dynamic> json) =>
      _$CulinaryRouletteStateFromJson(json);
}
