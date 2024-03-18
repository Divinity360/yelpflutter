part of 'otp_ver_cubit.dart';


enum OtpVerifyStatus { initial, loading, success, failed }

@freezed
class OtpVerifyState with _$OtpVerifyState {
  const factory OtpVerifyState.initial({
    @Default(OtpVerifyStatus.initial) OtpVerifyStatus status,
    @Default('') String? message,
}) = _Initial;
}

