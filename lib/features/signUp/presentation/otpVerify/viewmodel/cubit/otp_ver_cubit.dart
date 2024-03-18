import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:login_cubit/core/extension/extension.dart';

part 'otp_ver_state.dart';
part 'otp_ver_cubit.freezed.dart';

class OtpVerifyCubit extends Cubit<OtpVerifyState> {
  OtpVerifyCubit() : super(OtpVerifyState.initial());

  Future validateOTP(String otp) async {
    print(otp);
    if (otp.isEmpty) {
      emit(state.copyWith(status: OtpVerifyStatus.failed, message: 'OTP Verification field should not be empty.'));
    } else if (!otp.isNumeric) {
      emit(state.copyWith(status: OtpVerifyStatus.failed, message: 'OTP Verification should be numeric.'));
    } else if (otp.length != 6) {
      emit(state.copyWith(status: OtpVerifyStatus.failed, message: 'OTP Verification should have 6 digits.'));
    } else {
      emit(state.copyWith(status: OtpVerifyStatus.success, message: 'OTP Verification successful'));
    }
  }
}
