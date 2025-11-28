// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
part 'filter_dto.freezed.dart';
part 'filter_dto.g.dart';

@freezed
class FilterDTO with _$FilterDTO {
  const factory FilterDTO({
    String? search,
    String? category,
    String? filter_brand,
    String? filter_id,
    String? filter_od,
    String? filter_depth,
    String? filter_dimensions,
    String? filter_chamfers_angles,
    String? min_price,
    String? max_price,
    String? id,
    String? od,
    String? depth,
  }) = _FilterDTO;

  factory FilterDTO.fromJson(Map<String, dynamic> json) =>
      _$FilterDTOFromJson(json);
}
