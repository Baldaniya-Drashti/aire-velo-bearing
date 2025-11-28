// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchProductDTOImpl _$$SearchProductDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchProductDTOImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      price: json['price'] as String?,
      slug: json['slug'] as String?,
      additional_info: json['additional_info'] == null
          ? null
          : Attributes.fromJson(
              json['additional_info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SearchProductDTOImplToJson(
        _$SearchProductDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'images': instance.images,
      'price': instance.price,
      'slug': instance.slug,
      'additional_info': instance.additional_info,
    };

_$AttributesImpl _$$AttributesImplFromJson(Map<String, dynamic> json) =>
    _$AttributesImpl(
      Dimensions: json['Dimensions'] as String?,
      ID: json['ID'] as String?,
      OD: json['OD'] as String?,
      chamfersAngles: json['Chamfer Angles'] as String?,
      Depth: json['Depth'] as String?,
    );

Map<String, dynamic> _$$AttributesImplToJson(_$AttributesImpl instance) =>
    <String, dynamic>{
      'Dimensions': instance.Dimensions,
      'ID': instance.ID,
      'OD': instance.OD,
      'Chamfer Angles': instance.chamfersAngles,
      'Depth': instance.Depth,
    };
