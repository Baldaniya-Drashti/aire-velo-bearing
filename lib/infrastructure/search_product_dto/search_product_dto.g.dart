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
      slug: json['slug'] as String?,
      attributes: json['attributes'] == null
          ? null
          : Attributes.fromJson(json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SearchProductDTOImplToJson(
        _$SearchProductDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'images': instance.images,
      'slug': instance.slug,
      'attributes': instance.attributes,
    };

_$AttributesImpl _$$AttributesImplFromJson(Map<String, dynamic> json) =>
    _$AttributesImpl(
      dimensions: (json['dimensions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      id: (json['id'] as List<dynamic>?)?.map((e) => e as String).toList(),
      od: (json['od'] as List<dynamic>?)?.map((e) => e as String).toList(),
      chamfers_angles: (json['chamfers-angles'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      depth:
          (json['depth'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$AttributesImplToJson(_$AttributesImpl instance) =>
    <String, dynamic>{
      'dimensions': instance.dimensions,
      'id': instance.id,
      'od': instance.od,
      'chamfers-angles': instance.chamfers_angles,
      'depth': instance.depth,
    };
