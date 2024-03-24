// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'culinary_roulette_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CulinaryRouletteStateImpl _$$CulinaryRouletteStateImplFromJson(
        Map<String, dynamic> json) =>
    _$CulinaryRouletteStateImpl(
      status: $enumDecodeNullable(
              _$CulinaryRouletteStatusEnumMap, json['status']) ??
          CulinaryRouletteStatus.initial,
      restaurantList: (json['restaurantList'] as List<dynamic>?)
          ?.map((e) => Restaurant.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$CulinaryRouletteStateImplToJson(
        _$CulinaryRouletteStateImpl instance) =>
    <String, dynamic>{
      'status': _$CulinaryRouletteStatusEnumMap[instance.status]!,
      'restaurantList': instance.restaurantList,
      'error': instance.error,
    };

const _$CulinaryRouletteStatusEnumMap = {
  CulinaryRouletteStatus.initial: 'initial',
  CulinaryRouletteStatus.searchInProgress: 'searchInProgress',
  CulinaryRouletteStatus.spinRoulette: 'rouletteSpinning',
  CulinaryRouletteStatus.searchSuccessful: 'searchSuccessful',
  CulinaryRouletteStatus.searchFailed: 'searchFailed',
};
