import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.freezed.dart';
part 'location.g.dart';

@freezed
class Location with _$Location {
  const factory Location({
    String? address1,
    String? address2,
    String? address3,
    String? city,
    String? zipCode,
    String? country,
    String? state,
    @JsonKey(name: 'display_address') List<String>? displayAddress
  }) = _Location;

  factory Location.fromJson(Map<String, Object?> json) =>
      _$LocationFromJson(json);
}
