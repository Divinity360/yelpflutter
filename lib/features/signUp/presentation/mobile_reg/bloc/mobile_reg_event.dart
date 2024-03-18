part of 'mobile_reg_bloc.dart';

@freezed
class MobileRegEvent with _$MobileRegEvent {
  const factory MobileRegEvent.onPhoneNumChanged(PhoneNumber? number) = _PhoneNumChanged;
  const factory MobileRegEvent.onValidateMobileNum() = _ValidateMobileNum;
}