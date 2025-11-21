// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remember_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RememberDTOImpl _$$RememberDTOImplFromJson(Map<String, dynamic> json) =>
    _$RememberDTOImpl(
      isRemember: (json['isRemember'] as num?)?.toInt(),
      email: json['email'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$$RememberDTOImplToJson(_$RememberDTOImpl instance) =>
    <String, dynamic>{
      'isRemember': instance.isRemember,
      'email': instance.email,
      'password': instance.password,
    };
