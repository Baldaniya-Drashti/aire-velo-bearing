// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
part 'filter_option_list_dto.freezed.dart';
part 'filter_option_list_dto.g.dart';

@freezed
class FilterOptionListDTO with _$FilterOptionListDTO {
  const factory FilterOptionListDTO({
    int? term_id,
    String? slug,
    String? name,
    bool? selected,
    int? count,
    bool? is_parent,
  }) = _FilterOptionListDTO;

  factory FilterOptionListDTO.fromJson(Map<String, dynamic> json) =>
      _$FilterOptionListDTOFromJson(json);
}
