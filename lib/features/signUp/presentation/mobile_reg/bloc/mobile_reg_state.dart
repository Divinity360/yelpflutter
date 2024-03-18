part of 'mobile_reg_bloc.dart';

@freezed
class MobileRegState with _$MobileRegState {
  const MobileRegState._();

  const factory MobileRegState.initial(
      {@Default(MobileRegStatus.initial) MobileRegStatus status,
        @Default('') String phoneNumber,
        @Default('') String dialCode,
      @Default('') String message}) = _Initial;

  factory MobileRegState.fromJson(Map<String, dynamic> json) => _$MobileRegStateFromJson(json);
}
