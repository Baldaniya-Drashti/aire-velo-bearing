// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_option_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FilterOptionListDTOImpl _$$FilterOptionListDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$FilterOptionListDTOImpl(
      term_id: (json['term_id'] as num?)?.toInt(),
      slug: json['slug'] as String?,
      name: json['name'] as String?,
      selected: json['selected'] as bool?,
      count: (json['count'] as num?)?.toInt(),
      is_parent: json['is_parent'] as bool?,
      ui_min_price: (json['ui_min_price'] as num?)?.toDouble(),
      ui_max_price: (json['ui_max_price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$FilterOptionListDTOImplToJson(
        _$FilterOptionListDTOImpl instance) =>
    <String, dynamic>{
      'term_id': instance.term_id,
      'slug': instance.slug,
      'name': instance.name,
      'selected': instance.selected,
      'count': instance.count,
      'is_parent': instance.is_parent,
      'ui_min_price': instance.ui_min_price,
      'ui_max_price': instance.ui_max_price,
    };
