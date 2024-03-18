import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:login_cubit/core/extension/extension.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

part 'mobile_reg_state.dart';
part 'mobile_reg_event.dart';
part 'mobile_reg_bloc.freezed.dart';
part 'mobile_reg_bloc.g.dart';

enum MobileRegStatus { initial, loading, success, failed }

class MobileRegBloc extends Bloc<MobileRegEvent, MobileRegState> {
  MobileRegBloc() : super(const MobileRegState.initial()){
    on<_PhoneNumChanged>(_onPhoneNumberChanged);
    on<_ValidateMobileNum>(_onValidateMobileNumChanged);
  }

  Future<void> _onPhoneNumberChanged(_PhoneNumChanged event, Emitter<MobileRegState> emit) async{
    emit(state.copyWith(status: MobileRegStatus.initial, phoneNumber: event.number!.phoneNumber!, dialCode: event.number!.dialCode!));
  }

  Future<void> _onValidateMobileNumChanged(_ValidateMobileNum event, Emitter<MobileRegState> emit) async {
    final phoneNum = state.phoneNumber;
    final dialCode = state.dialCode;
    print(phoneNum);
    if (phoneNum.isEmpty) {
      emit(state.copyWith(status: MobileRegStatus.failed, message: 'Phone Number field should not be empty.'));
    } else {
      var numberInput = phoneNum.substring(dialCode.length);
      if (numberInput.isEmpty) {
        emit(state.copyWith(status: MobileRegStatus.failed, message: 'Phone Number field should not be empty.'));
      } else if (!numberInput.isNumeric) {
        emit(state.copyWith(status: MobileRegStatus.failed, message: 'Phone Number field should be digits.'));
      } else if (numberInput.length > 20 || numberInput.length < 5) {
        emit(state.copyWith(status: MobileRegStatus.failed, message: 'Phone Number field should be valid'));
      } else {
        emit(state.copyWith(status: MobileRegStatus.success));
      }
    }
  }
}
