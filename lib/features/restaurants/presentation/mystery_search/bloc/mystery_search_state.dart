part of 'mystery_search_bloc.dart';

@freezed
abstract class MysterySearchState with _$MysterySearchState {
  const factory MysterySearchState({
    @Default(MysterySearchStatus.initial) MysterySearchStatus status,
    @Default(3) int revealCounter,
    Restaurant? restaurant,
    String? error
  }) = _MysterySearchState;

  factory MysterySearchState.fromJson(Map<String, dynamic> json) =>
      _$MysterySearchStateFromJson(json);
}
