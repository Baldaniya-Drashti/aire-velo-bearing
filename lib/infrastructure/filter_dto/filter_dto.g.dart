// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FilterDTOImpl _$$FilterDTOImplFromJson(Map<String, dynamic> json) =>
    _$FilterDTOImpl(
      search: json['search'] as String?,
      category: json['category'] as String?,
      filter_brand: json['filter_brand'] as String?,
      filter_id: json['filter_id'] as String?,
      filter_od: json['filter_od'] as String?,
      filter_depth: json['filter_depth'] as String?,
      filter_dimensions: json['filter_dimensions'] as String?,
      filter_chamfers_angles: json['filter_chamfers_angles'] as String?,
      min_price: json['min_price'] as String?,
      max_price: json['max_price'] as String?,
      id: json['id'] as String?,
      od: json['od'] as String?,
      depth: json['depth'] as String?,
    );

Map<String, dynamic> _$$FilterDTOImplToJson(_$FilterDTOImpl instance) =>
    <String, dynamic>{
      'search': instance.search,
      'category': instance.category,
      'filter_brand': instance.filter_brand,
      'filter_id': instance.filter_id,
      'filter_od': instance.filter_od,
      'filter_depth': instance.filter_depth,
      'filter_dimensions': instance.filter_dimensions,
      'filter_chamfers_angles': instance.filter_chamfers_angles,
      'min_price': instance.min_price,
      'max_price': instance.max_price,
      'id': instance.id,
      'od': instance.od,
      'depth': instance.depth,
    };
