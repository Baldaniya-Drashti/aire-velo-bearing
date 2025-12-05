// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubCategoryDTOImpl _$$SubCategoryDTOImplFromJson(Map<String, dynamic> json) =>
    _$SubCategoryDTOImpl(
      id: (json['id'] as num?)?.toInt(),
      parent_id: (json['parent_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      min_price: (json['min_price'] as num?)?.toDouble(),
      max_price: (json['max_price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$SubCategoryDTOImplToJson(
        _$SubCategoryDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parent_id': instance.parent_id,
      'name': instance.name,
      'slug': instance.slug,
      'min_price': instance.min_price,
      'max_price': instance.max_price,
    };
