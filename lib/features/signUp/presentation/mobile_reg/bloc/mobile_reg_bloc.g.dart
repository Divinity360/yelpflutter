// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobile_reg_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InitialImpl _$$InitialImplFromJson(Map<String, dynamic> json) =>
    _$InitialImpl(
      status: $enumDecodeNullable(_$MobileRegStatusEnumMap, json['status']) ??
          MobileRegStatus.initial,
      phoneNumber: json['phoneNumber'] as String? ?? '',
      dialCode: json['dialCode'] as String? ?? '',
      message: json['message'] as String? ?? '',
    );

Map<String, dynamic> _$$InitialImplToJson(_$InitialImpl instance) =>
    <String, dynamic>{
      'status': _$MobileRegStatusEnumMap[instance.status]!,
      'phoneNumber': instance.phoneNumber,
      'dialCode': instance.dialCode,
      'message': instance.message,
    };

const _$MobileRegStatusEnumMap = {
  MobileRegStatus.initial: 'initial',
  MobileRegStatus.loading: 'loading',
  MobileRegStatus.success: 'success',
  MobileRegStatus.failed: 'failed',
};
