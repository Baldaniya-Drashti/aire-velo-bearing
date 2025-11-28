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
    String? price,
    String? slug,
    Attributes? additional_info,
  }) = _SearchProductDTO;

  factory SearchProductDTO.fromJson(Map<String, dynamic> json) =>
      _$SearchProductDTOFromJson(json);
}

@freezed
class Attributes with _$Attributes {
  const factory Attributes({
    String? Dimensions,
    String? ID,
    String? OD,
    @JsonKey(name: 'Chamfer Angles') String? chamfersAngles,
    String? Depth,
  }) = _Attributes;

  factory Attributes.fromJson(Map<String, dynamic> json) =>
      _$AttributesFromJson(json);
}
