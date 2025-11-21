// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductDetailDTOImpl _$$ProductDetailDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductDetailDTOImpl(
      id: (json['id'] as num?)?.toInt(),
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      name: json['name'] as String?,
      price: json['price'] as String?,
      stock_status: json['stock_status'] as String?,
      short_description: json['short_description'] as String?,
      description: json['description'] as String?,
      permalink: json['permalink'] as String?,
    );

Map<String, dynamic> _$$ProductDetailDTOImplToJson(
        _$ProductDetailDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'images': instance.images,
      'name': instance.name,
      'price': instance.price,
      'stock_status': instance.stock_status,
      'short_description': instance.short_description,
      'description': instance.description,
      'permalink': instance.permalink,
    };
