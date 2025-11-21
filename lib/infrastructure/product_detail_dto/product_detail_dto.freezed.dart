// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_detail_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductDetailDTO _$ProductDetailDTOFromJson(Map<String, dynamic> json) {
  return _ProductDetailDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductDetailDTO {
  int? get id => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  String? get stock_status => throw _privateConstructorUsedError;
  String? get short_description => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get permalink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDetailDTOCopyWith<ProductDetailDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailDTOCopyWith<$Res> {
  factory $ProductDetailDTOCopyWith(
          ProductDetailDTO value, $Res Function(ProductDetailDTO) then) =
      _$ProductDetailDTOCopyWithImpl<$Res, ProductDetailDTO>;
  @useResult
  $Res call(
      {int? id,
      List<String>? images,
      String? name,
      String? price,
      String? stock_status,
      String? short_description,
      String? description,
      String? permalink});
}

/// @nodoc
class _$ProductDetailDTOCopyWithImpl<$Res, $Val extends ProductDetailDTO>
    implements $ProductDetailDTOCopyWith<$Res> {
  _$ProductDetailDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? images = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? stock_status = freezed,
    Object? short_description = freezed,
    Object? description = freezed,
    Object? permalink = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      stock_status: freezed == stock_status
          ? _value.stock_status
          : stock_status // ignore: cast_nullable_to_non_nullable
              as String?,
      short_description: freezed == short_description
          ? _value.short_description
          : short_description // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      permalink: freezed == permalink
          ? _value.permalink
          : permalink // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductDetailDTOImplCopyWith<$Res>
    implements $ProductDetailDTOCopyWith<$Res> {
  factory _$$ProductDetailDTOImplCopyWith(_$ProductDetailDTOImpl value,
          $Res Function(_$ProductDetailDTOImpl) then) =
      __$$ProductDetailDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      List<String>? images,
      String? name,
      String? price,
      String? stock_status,
      String? short_description,
      String? description,
      String? permalink});
}

/// @nodoc
class __$$ProductDetailDTOImplCopyWithImpl<$Res>
    extends _$ProductDetailDTOCopyWithImpl<$Res, _$ProductDetailDTOImpl>
    implements _$$ProductDetailDTOImplCopyWith<$Res> {
  __$$ProductDetailDTOImplCopyWithImpl(_$ProductDetailDTOImpl _value,
      $Res Function(_$ProductDetailDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? images = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? stock_status = freezed,
    Object? short_description = freezed,
    Object? description = freezed,
    Object? permalink = freezed,
  }) {
    return _then(_$ProductDetailDTOImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      stock_status: freezed == stock_status
          ? _value.stock_status
          : stock_status // ignore: cast_nullable_to_non_nullable
              as String?,
      short_description: freezed == short_description
          ? _value.short_description
          : short_description // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      permalink: freezed == permalink
          ? _value.permalink
          : permalink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDetailDTOImpl implements _ProductDetailDTO {
  const _$ProductDetailDTOImpl(
      {this.id,
      final List<String>? images,
      this.name,
      this.price,
      this.stock_status,
      this.short_description,
      this.description,
      this.permalink})
      : _images = images;

  factory _$ProductDetailDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDetailDTOImplFromJson(json);

  @override
  final int? id;
  final List<String>? _images;
  @override
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? name;
  @override
  final String? price;
  @override
  final String? stock_status;
  @override
  final String? short_description;
  @override
  final String? description;
  @override
  final String? permalink;

  @override
  String toString() {
    return 'ProductDetailDTO(id: $id, images: $images, name: $name, price: $price, stock_status: $stock_status, short_description: $short_description, description: $description, permalink: $permalink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.stock_status, stock_status) ||
                other.stock_status == stock_status) &&
            (identical(other.short_description, short_description) ||
                other.short_description == short_description) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.permalink, permalink) ||
                other.permalink == permalink));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_images),
      name,
      price,
      stock_status,
      short_description,
      description,
      permalink);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailDTOImplCopyWith<_$ProductDetailDTOImpl> get copyWith =>
      __$$ProductDetailDTOImplCopyWithImpl<_$ProductDetailDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDetailDTOImplToJson(
      this,
    );
  }
}

abstract class _ProductDetailDTO implements ProductDetailDTO {
  const factory _ProductDetailDTO(
      {final int? id,
      final List<String>? images,
      final String? name,
      final String? price,
      final String? stock_status,
      final String? short_description,
      final String? description,
      final String? permalink}) = _$ProductDetailDTOImpl;

  factory _ProductDetailDTO.fromJson(Map<String, dynamic> json) =
      _$ProductDetailDTOImpl.fromJson;

  @override
  int? get id;
  @override
  List<String>? get images;
  @override
  String? get name;
  @override
  String? get price;
  @override
  String? get stock_status;
  @override
  String? get short_description;
  @override
  String? get description;
  @override
  String? get permalink;
  @override
  @JsonKey(ignore: true)
  _$$ProductDetailDTOImplCopyWith<_$ProductDetailDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
