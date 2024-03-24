// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mystery_search_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MysterySearchStateImpl _$$MysterySearchStateImplFromJson(
        Map<String, dynamic> json) =>
    _$MysterySearchStateImpl(
      status:
          $enumDecodeNullable(_$MysterySearchStatusEnumMap, json['status']) ??
              MysterySearchStatus.initial,
      revealCounter: json['revealCounter'] as int? ?? 3,
      restaurant: json['restaurant'] == null
          ? null
          : Restaurant.fromJson(json['restaurant'] as Map<String, dynamic>),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$MysterySearchStateImplToJson(
        _$MysterySearchStateImpl instance) =>
    <String, dynamic>{
      'status': _$MysterySearchStatusEnumMap[instance.status]!,
      'revealCounter': instance.revealCounter,
      'restaurant': instance.restaurant,
      'error': instance.error,
    };

const _$MysterySearchStatusEnumMap = {
  MysterySearchStatus.initial: 'initial',
  MysterySearchStatus.searchInProgress: 'searchInProgress',
  MysterySearchStatus.revealingSearch: 'revealingSearch',
  MysterySearchStatus.searchSuccessful: 'searchSuccessful',
  MysterySearchStatus.searchFailed: 'searchFailed',
};
