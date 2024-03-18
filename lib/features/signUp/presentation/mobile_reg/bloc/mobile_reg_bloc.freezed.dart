// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mobile_reg_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MobileRegState _$MobileRegStateFromJson(Map<String, dynamic> json) {
  return _Initial.fromJson(json);
}

/// @nodoc
mixin _$MobileRegState {
  MobileRegStatus get status => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get dialCode => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MobileRegStatus status, String phoneNumber,
            String dialCode, String message)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MobileRegStatus status, String phoneNumber,
            String dialCode, String message)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MobileRegStatus status, String phoneNumber,
            String dialCode, String message)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MobileRegStateCopyWith<MobileRegState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MobileRegStateCopyWith<$Res> {
  factory $MobileRegStateCopyWith(
          MobileRegState value, $Res Function(MobileRegState) then) =
      _$MobileRegStateCopyWithImpl<$Res, MobileRegState>;
  @useResult
  $Res call(
      {MobileRegStatus status,
      String phoneNumber,
      String dialCode,
      String message});
}

/// @nodoc
class _$MobileRegStateCopyWithImpl<$Res, $Val extends MobileRegState>
    implements $MobileRegStateCopyWith<$Res> {
  _$MobileRegStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? phoneNumber = null,
    Object? dialCode = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MobileRegStatus,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      dialCode: null == dialCode
          ? _value.dialCode
          : dialCode // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $MobileRegStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MobileRegStatus status,
      String phoneNumber,
      String dialCode,
      String message});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$MobileRegStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? phoneNumber = null,
    Object? dialCode = null,
    Object? message = null,
  }) {
    return _then(_$InitialImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MobileRegStatus,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      dialCode: null == dialCode
          ? _value.dialCode
          : dialCode // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InitialImpl extends _Initial {
  const _$InitialImpl(
      {this.status = MobileRegStatus.initial,
      this.phoneNumber = '',
      this.dialCode = '',
      this.message = ''})
      : super._();

  factory _$InitialImpl.fromJson(Map<String, dynamic> json) =>
      _$$InitialImplFromJson(json);

  @override
  @JsonKey()
  final MobileRegStatus status;
  @override
  @JsonKey()
  final String phoneNumber;
  @override
  @JsonKey()
  final String dialCode;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'MobileRegState.initial(status: $status, phoneNumber: $phoneNumber, dialCode: $dialCode, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.dialCode, dialCode) ||
                other.dialCode == dialCode) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, phoneNumber, dialCode, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MobileRegStatus status, String phoneNumber,
            String dialCode, String message)
        initial,
  }) {
    return initial(status, phoneNumber, dialCode, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MobileRegStatus status, String phoneNumber,
            String dialCode, String message)?
        initial,
  }) {
    return initial?.call(status, phoneNumber, dialCode, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MobileRegStatus status, String phoneNumber,
            String dialCode, String message)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(status, phoneNumber, dialCode, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InitialImplToJson(
      this,
    );
  }
}

abstract class _Initial extends MobileRegState {
  const factory _Initial(
      {final MobileRegStatus status,
      final String phoneNumber,
      final String dialCode,
      final String message}) = _$InitialImpl;
  const _Initial._() : super._();

  factory _Initial.fromJson(Map<String, dynamic> json) = _$InitialImpl.fromJson;

  @override
  MobileRegStatus get status;
  @override
  String get phoneNumber;
  @override
  String get dialCode;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MobileRegEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PhoneNumber? number) onPhoneNumChanged,
    required TResult Function() onValidateMobileNum,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PhoneNumber? number)? onPhoneNumChanged,
    TResult? Function()? onValidateMobileNum,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PhoneNumber? number)? onPhoneNumChanged,
    TResult Function()? onValidateMobileNum,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneNumChanged value) onPhoneNumChanged,
    required TResult Function(_ValidateMobileNum value) onValidateMobileNum,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhoneNumChanged value)? onPhoneNumChanged,
    TResult? Function(_ValidateMobileNum value)? onValidateMobileNum,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneNumChanged value)? onPhoneNumChanged,
    TResult Function(_ValidateMobileNum value)? onValidateMobileNum,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MobileRegEventCopyWith<$Res> {
  factory $MobileRegEventCopyWith(
          MobileRegEvent value, $Res Function(MobileRegEvent) then) =
      _$MobileRegEventCopyWithImpl<$Res, MobileRegEvent>;
}

/// @nodoc
class _$MobileRegEventCopyWithImpl<$Res, $Val extends MobileRegEvent>
    implements $MobileRegEventCopyWith<$Res> {
  _$MobileRegEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PhoneNumChangedImplCopyWith<$Res> {
  factory _$$PhoneNumChangedImplCopyWith(_$PhoneNumChangedImpl value,
          $Res Function(_$PhoneNumChangedImpl) then) =
      __$$PhoneNumChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PhoneNumber? number});
}

/// @nodoc
class __$$PhoneNumChangedImplCopyWithImpl<$Res>
    extends _$MobileRegEventCopyWithImpl<$Res, _$PhoneNumChangedImpl>
    implements _$$PhoneNumChangedImplCopyWith<$Res> {
  __$$PhoneNumChangedImplCopyWithImpl(
      _$PhoneNumChangedImpl _value, $Res Function(_$PhoneNumChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
  }) {
    return _then(_$PhoneNumChangedImpl(
      freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as PhoneNumber?,
    ));
  }
}

/// @nodoc

class _$PhoneNumChangedImpl implements _PhoneNumChanged {
  const _$PhoneNumChangedImpl(this.number);

  @override
  final PhoneNumber? number;

  @override
  String toString() {
    return 'MobileRegEvent.onPhoneNumChanged(number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneNumChangedImpl &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(runtimeType, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneNumChangedImplCopyWith<_$PhoneNumChangedImpl> get copyWith =>
      __$$PhoneNumChangedImplCopyWithImpl<_$PhoneNumChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PhoneNumber? number) onPhoneNumChanged,
    required TResult Function() onValidateMobileNum,
  }) {
    return onPhoneNumChanged(number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PhoneNumber? number)? onPhoneNumChanged,
    TResult? Function()? onValidateMobileNum,
  }) {
    return onPhoneNumChanged?.call(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PhoneNumber? number)? onPhoneNumChanged,
    TResult Function()? onValidateMobileNum,
    required TResult orElse(),
  }) {
    if (onPhoneNumChanged != null) {
      return onPhoneNumChanged(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneNumChanged value) onPhoneNumChanged,
    required TResult Function(_ValidateMobileNum value) onValidateMobileNum,
  }) {
    return onPhoneNumChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhoneNumChanged value)? onPhoneNumChanged,
    TResult? Function(_ValidateMobileNum value)? onValidateMobileNum,
  }) {
    return onPhoneNumChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneNumChanged value)? onPhoneNumChanged,
    TResult Function(_ValidateMobileNum value)? onValidateMobileNum,
    required TResult orElse(),
  }) {
    if (onPhoneNumChanged != null) {
      return onPhoneNumChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneNumChanged implements MobileRegEvent {
  const factory _PhoneNumChanged(final PhoneNumber? number) =
      _$PhoneNumChangedImpl;

  PhoneNumber? get number;
  @JsonKey(ignore: true)
  _$$PhoneNumChangedImplCopyWith<_$PhoneNumChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValidateMobileNumImplCopyWith<$Res> {
  factory _$$ValidateMobileNumImplCopyWith(_$ValidateMobileNumImpl value,
          $Res Function(_$ValidateMobileNumImpl) then) =
      __$$ValidateMobileNumImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ValidateMobileNumImplCopyWithImpl<$Res>
    extends _$MobileRegEventCopyWithImpl<$Res, _$ValidateMobileNumImpl>
    implements _$$ValidateMobileNumImplCopyWith<$Res> {
  __$$ValidateMobileNumImplCopyWithImpl(_$ValidateMobileNumImpl _value,
      $Res Function(_$ValidateMobileNumImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ValidateMobileNumImpl implements _ValidateMobileNum {
  const _$ValidateMobileNumImpl();

  @override
  String toString() {
    return 'MobileRegEvent.onValidateMobileNum()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ValidateMobileNumImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PhoneNumber? number) onPhoneNumChanged,
    required TResult Function() onValidateMobileNum,
  }) {
    return onValidateMobileNum();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PhoneNumber? number)? onPhoneNumChanged,
    TResult? Function()? onValidateMobileNum,
  }) {
    return onValidateMobileNum?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PhoneNumber? number)? onPhoneNumChanged,
    TResult Function()? onValidateMobileNum,
    required TResult orElse(),
  }) {
    if (onValidateMobileNum != null) {
      return onValidateMobileNum();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneNumChanged value) onPhoneNumChanged,
    required TResult Function(_ValidateMobileNum value) onValidateMobileNum,
  }) {
    return onValidateMobileNum(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhoneNumChanged value)? onPhoneNumChanged,
    TResult? Function(_ValidateMobileNum value)? onValidateMobileNum,
  }) {
    return onValidateMobileNum?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneNumChanged value)? onPhoneNumChanged,
    TResult Function(_ValidateMobileNum value)? onValidateMobileNum,
    required TResult orElse(),
  }) {
    if (onValidateMobileNum != null) {
      return onValidateMobileNum(this);
    }
    return orElse();
  }
}

abstract class _ValidateMobileNum implements MobileRegEvent {
  const factory _ValidateMobileNum() = _$ValidateMobileNumImpl;
}
