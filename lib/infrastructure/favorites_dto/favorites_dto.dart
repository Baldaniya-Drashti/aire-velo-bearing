// ignore_for_file: non_constant_identifier_names

import 'package:aire_velo_bearings/infrastructure/search_product_dto/search_product_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'favorites_dto.freezed.dart';
part 'favorites_dto.g.dart';

@freezed
class FavoritesDTO with _$FavoritesDTO {
  const factory FavoritesDTO({
    int? id,
    String? name,
    String? slug,
    double? price,
    String? image,
    Attributes? additional_info,
  }) = _FavoritesDTO;

  factory FavoritesDTO.fromJson(Map<String, dynamic> json) =>
      _$FavoritesDTOFromJson(json);
}
