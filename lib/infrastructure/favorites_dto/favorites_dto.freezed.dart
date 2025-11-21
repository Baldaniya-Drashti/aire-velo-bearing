// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorites_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FavoritesDTO _$FavoritesDTOFromJson(Map<String, dynamic> json) {
  return _FavoritesDTO.fromJson(json);
}

/// @nodoc
mixin _$FavoritesDTO {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  Attributes? get additional_info => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoritesDTOCopyWith<FavoritesDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesDTOCopyWith<$Res> {
  factory $FavoritesDTOCopyWith(
          FavoritesDTO value, $Res Function(FavoritesDTO) then) =
      _$FavoritesDTOCopyWithImpl<$Res, FavoritesDTO>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? slug,
      double? price,
      String? image,
      Attributes? additional_info});

  $AttributesCopyWith<$Res>? get additional_info;
}

/// @nodoc
class _$FavoritesDTOCopyWithImpl<$Res, $Val extends FavoritesDTO>
    implements $FavoritesDTOCopyWith<$Res> {
  _$FavoritesDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? slug = freezed,
    Object? price = freezed,
    Object? image = freezed,
    Object? additional_info = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      additional_info: freezed == additional_info
          ? _value.additional_info
          : additional_info // ignore: cast_nullable_to_non_nullable
              as Attributes?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AttributesCopyWith<$Res>? get additional_info {
    if (_value.additional_info == null) {
      return null;
    }

    return $AttributesCopyWith<$Res>(_value.additional_info!, (value) {
      return _then(_value.copyWith(additional_info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FavoritesDTOImplCopyWith<$Res>
    implements $FavoritesDTOCopyWith<$Res> {
  factory _$$FavoritesDTOImplCopyWith(
          _$FavoritesDTOImpl value, $Res Function(_$FavoritesDTOImpl) then) =
      __$$FavoritesDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? slug,
      double? price,
      String? image,
      Attributes? additional_info});

  @override
  $AttributesCopyWith<$Res>? get additional_info;
}

/// @nodoc
class __$$FavoritesDTOImplCopyWithImpl<$Res>
    extends _$FavoritesDTOCopyWithImpl<$Res, _$FavoritesDTOImpl>
    implements _$$FavoritesDTOImplCopyWith<$Res> {
  __$$FavoritesDTOImplCopyWithImpl(
      _$FavoritesDTOImpl _value, $Res Function(_$FavoritesDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? slug = freezed,
    Object? price = freezed,
    Object? image = freezed,
    Object? additional_info = freezed,
  }) {
    return _then(_$FavoritesDTOImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      additional_info: freezed == additional_info
          ? _value.additional_info
          : additional_info // ignore: cast_nullable_to_non_nullable
              as Attributes?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavoritesDTOImpl implements _FavoritesDTO {
  const _$FavoritesDTOImpl(
      {this.id,
      this.name,
      this.slug,
      this.price,
      this.image,
      this.additional_info});

  factory _$FavoritesDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavoritesDTOImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? slug;
  @override
  final double? price;
  @override
  final String? image;
  @override
  final Attributes? additional_info;

  @override
  String toString() {
    return 'FavoritesDTO(id: $id, name: $name, slug: $slug, price: $price, image: $image, additional_info: $additional_info)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritesDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.additional_info, additional_info) ||
                other.additional_info == additional_info));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, slug, price, image, additional_info);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoritesDTOImplCopyWith<_$FavoritesDTOImpl> get copyWith =>
      __$$FavoritesDTOImplCopyWithImpl<_$FavoritesDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavoritesDTOImplToJson(
      this,
    );
  }
}

abstract class _FavoritesDTO implements FavoritesDTO {
  const factory _FavoritesDTO(
      {final int? id,
      final String? name,
      final String? slug,
      final double? price,
      final String? image,
      final Attributes? additional_info}) = _$FavoritesDTOImpl;

  factory _FavoritesDTO.fromJson(Map<String, dynamic> json) =
      _$FavoritesDTOImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get slug;
  @override
  double? get price;
  @override
  String? get image;
  @override
  Attributes? get additional_info;
  @override
  @JsonKey(ignore: true)
  _$$FavoritesDTOImplCopyWith<_$FavoritesDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
