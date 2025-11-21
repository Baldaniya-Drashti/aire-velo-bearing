// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FavoritesDTOImpl _$$FavoritesDTOImplFromJson(Map<String, dynamic> json) =>
    _$FavoritesDTOImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      image: json['image'] as String?,
      additional_info: json['additional_info'] == null
          ? null
          : Attributes.fromJson(
              json['additional_info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FavoritesDTOImplToJson(_$FavoritesDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'price': instance.price,
      'image': instance.image,
      'additional_info': instance.additional_info,
    };
