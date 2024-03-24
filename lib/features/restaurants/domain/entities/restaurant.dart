import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:login_cubit/features/restaurants/domain/entities/categories.dart';
import 'package:login_cubit/features/restaurants/domain/entities/coordinates.dart';
import 'package:login_cubit/features/restaurants/domain/entities/location.dart';

part 'restaurant.freezed.dart';
part 'restaurant.g.dart';

@freezed
class Restaurant with _$Restaurant {
  const factory Restaurant({
    String? id,
    String? alias,
    String? name,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'is_closed') bool? isClosed,
    String? url,
    @JsonKey(name: 'review_count') int? reviewCount,
    List<Categories>? categories,
    double? rating,
    Coordinates? coordinates,
    List<String>? transactions,
    Location? location,
    String? phone,
    @JsonKey(name: 'display_phone') String? displayPhone,
    double? distance,
  }) = _Restaurant;

  factory Restaurant.fromJson(Map<String, Object?> json) =>
      _$RestaurantFromJson(json);
}
