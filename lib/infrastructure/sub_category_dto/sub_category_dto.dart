// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
part 'sub_category_dto.freezed.dart';
part 'sub_category_dto.g.dart';

@freezed
class SubCategoryDTO with _$SubCategoryDTO {
  const factory SubCategoryDTO({
    int? id,
    int? parent_id,
    String? name,
    String? slug,
  }) = _SubCategoryDTO;

  factory SubCategoryDTO.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryDTOFromJson(json);
}
