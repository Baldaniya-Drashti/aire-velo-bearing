// ignore_for_file: non_constant_identifier_names, invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'search_product_dto.freezed.dart';
part 'search_product_dto.g.dart';

@freezed
class SearchProductDTO with _$SearchProductDTO {
  const factory SearchProductDTO({
    int? id,
    String? name,
    List<String>? images,
    String? slug,
    Attributes? attributes,
  }) = _SearchProductDTO;

  factory SearchProductDTO.fromJson(Map<String, dynamic> json) =>
      _$SearchProductDTOFromJson(json);
}

@freezed
class Attributes with _$Attributes {
  const factory Attributes({
    List<String>? dimensions,
    List<String>? id,
    List<String>? od,
    @JsonKey(name: 'chamfers-angles') List<String>? chamfers_angles,
    List<String>? depth,
  }) = _Attributes;

  factory Attributes.fromJson(Map<String, dynamic> json) =>
      _$AttributesFromJson(json);
}
