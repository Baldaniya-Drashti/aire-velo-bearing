// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
part 'remember_dto.freezed.dart';
part 'remember_dto.g.dart';

@freezed
class RememberDTO with _$RememberDTO {
  const factory RememberDTO({
    int? isRemember,
    String? email,
    String? password,
  }) = _RememberDTO;

  factory RememberDTO.fromJson(Map<String, dynamic> json) =>
      _$RememberDTOFromJson(json);
}
