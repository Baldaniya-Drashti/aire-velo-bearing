// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_detail_dto.freezed.dart';
part 'product_detail_dto.g.dart';

@freezed
class ProductDetailDTO with _$ProductDetailDTO {
  const factory ProductDetailDTO({
    int? id,
    List<String>? images,
    String? name,
    String? price,
    String? stock_status,
    int? stock_status_int,
    String? short_description,
    String? description,
    String? permalink,
    Map<String, dynamic>? additional_info,
  }) = _ProductDetailDTO;

  factory ProductDetailDTO.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailDTOFromJson(json);
}
