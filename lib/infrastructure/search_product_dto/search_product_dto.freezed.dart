// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_product_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchProductDTO _$SearchProductDTOFromJson(Map<String, dynamic> json) {
  return _SearchProductDTO.fromJson(json);
}

/// @nodoc
mixin _$SearchProductDTO {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  Attributes? get additional_info => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchProductDTOCopyWith<SearchProductDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchProductDTOCopyWith<$Res> {
  factory $SearchProductDTOCopyWith(
          SearchProductDTO value, $Res Function(SearchProductDTO) then) =
      _$SearchProductDTOCopyWithImpl<$Res, SearchProductDTO>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      List<String>? images,
      String? price,
      String? slug,
      Attributes? additional_info});

  $AttributesCopyWith<$Res>? get additional_info;
}

/// @nodoc
class _$SearchProductDTOCopyWithImpl<$Res, $Val extends SearchProductDTO>
    implements $SearchProductDTOCopyWith<$Res> {
  _$SearchProductDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? images = freezed,
    Object? price = freezed,
    Object? slug = freezed,
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
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
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
abstract class _$$SearchProductDTOImplCopyWith<$Res>
    implements $SearchProductDTOCopyWith<$Res> {
  factory _$$SearchProductDTOImplCopyWith(_$SearchProductDTOImpl value,
          $Res Function(_$SearchProductDTOImpl) then) =
      __$$SearchProductDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      List<String>? images,
      String? price,
      String? slug,
      Attributes? additional_info});

  @override
  $AttributesCopyWith<$Res>? get additional_info;
}

/// @nodoc
class __$$SearchProductDTOImplCopyWithImpl<$Res>
    extends _$SearchProductDTOCopyWithImpl<$Res, _$SearchProductDTOImpl>
    implements _$$SearchProductDTOImplCopyWith<$Res> {
  __$$SearchProductDTOImplCopyWithImpl(_$SearchProductDTOImpl _value,
      $Res Function(_$SearchProductDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? images = freezed,
    Object? price = freezed,
    Object? slug = freezed,
    Object? additional_info = freezed,
  }) {
    return _then(_$SearchProductDTOImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
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
class _$SearchProductDTOImpl implements _SearchProductDTO {
  const _$SearchProductDTOImpl(
      {this.id,
      this.name,
      final List<String>? images,
      this.price,
      this.slug,
      this.additional_info})
      : _images = images;

  factory _$SearchProductDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchProductDTOImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
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
  final String? price;
  @override
  final String? slug;
  @override
  final Attributes? additional_info;

  @override
  String toString() {
    return 'SearchProductDTO(id: $id, name: $name, images: $images, price: $price, slug: $slug, additional_info: $additional_info)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchProductDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.additional_info, additional_info) ||
                other.additional_info == additional_info));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_images),
      price,
      slug,
      additional_info);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchProductDTOImplCopyWith<_$SearchProductDTOImpl> get copyWith =>
      __$$SearchProductDTOImplCopyWithImpl<_$SearchProductDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchProductDTOImplToJson(
      this,
    );
  }
}

abstract class _SearchProductDTO implements SearchProductDTO {
  const factory _SearchProductDTO(
      {final int? id,
      final String? name,
      final List<String>? images,
      final String? price,
      final String? slug,
      final Attributes? additional_info}) = _$SearchProductDTOImpl;

  factory _SearchProductDTO.fromJson(Map<String, dynamic> json) =
      _$SearchProductDTOImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  List<String>? get images;
  @override
  String? get price;
  @override
  String? get slug;
  @override
  Attributes? get additional_info;
  @override
  @JsonKey(ignore: true)
  _$$SearchProductDTOImplCopyWith<_$SearchProductDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Attributes _$AttributesFromJson(Map<String, dynamic> json) {
  return _Attributes.fromJson(json);
}

/// @nodoc
mixin _$Attributes {
  String? get Dimensions => throw _privateConstructorUsedError;
  String? get ID => throw _privateConstructorUsedError;
  String? get OD => throw _privateConstructorUsedError;
  @JsonKey(name: 'Chamfer Angles')
  String? get chamfersAngles => throw _privateConstructorUsedError;
  String? get Depth => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttributesCopyWith<Attributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributesCopyWith<$Res> {
  factory $AttributesCopyWith(
          Attributes value, $Res Function(Attributes) then) =
      _$AttributesCopyWithImpl<$Res, Attributes>;
  @useResult
  $Res call(
      {String? Dimensions,
      String? ID,
      String? OD,
      @JsonKey(name: 'Chamfer Angles') String? chamfersAngles,
      String? Depth});
}

/// @nodoc
class _$AttributesCopyWithImpl<$Res, $Val extends Attributes>
    implements $AttributesCopyWith<$Res> {
  _$AttributesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Dimensions = freezed,
    Object? ID = freezed,
    Object? OD = freezed,
    Object? chamfersAngles = freezed,
    Object? Depth = freezed,
  }) {
    return _then(_value.copyWith(
      Dimensions: freezed == Dimensions
          ? _value.Dimensions
          : Dimensions // ignore: cast_nullable_to_non_nullable
              as String?,
      ID: freezed == ID
          ? _value.ID
          : ID // ignore: cast_nullable_to_non_nullable
              as String?,
      OD: freezed == OD
          ? _value.OD
          : OD // ignore: cast_nullable_to_non_nullable
              as String?,
      chamfersAngles: freezed == chamfersAngles
          ? _value.chamfersAngles
          : chamfersAngles // ignore: cast_nullable_to_non_nullable
              as String?,
      Depth: freezed == Depth
          ? _value.Depth
          : Depth // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttributesImplCopyWith<$Res>
    implements $AttributesCopyWith<$Res> {
  factory _$$AttributesImplCopyWith(
          _$AttributesImpl value, $Res Function(_$AttributesImpl) then) =
      __$$AttributesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? Dimensions,
      String? ID,
      String? OD,
      @JsonKey(name: 'Chamfer Angles') String? chamfersAngles,
      String? Depth});
}

/// @nodoc
class __$$AttributesImplCopyWithImpl<$Res>
    extends _$AttributesCopyWithImpl<$Res, _$AttributesImpl>
    implements _$$AttributesImplCopyWith<$Res> {
  __$$AttributesImplCopyWithImpl(
      _$AttributesImpl _value, $Res Function(_$AttributesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Dimensions = freezed,
    Object? ID = freezed,
    Object? OD = freezed,
    Object? chamfersAngles = freezed,
    Object? Depth = freezed,
  }) {
    return _then(_$AttributesImpl(
      Dimensions: freezed == Dimensions
          ? _value.Dimensions
          : Dimensions // ignore: cast_nullable_to_non_nullable
              as String?,
      ID: freezed == ID
          ? _value.ID
          : ID // ignore: cast_nullable_to_non_nullable
              as String?,
      OD: freezed == OD
          ? _value.OD
          : OD // ignore: cast_nullable_to_non_nullable
              as String?,
      chamfersAngles: freezed == chamfersAngles
          ? _value.chamfersAngles
          : chamfersAngles // ignore: cast_nullable_to_non_nullable
              as String?,
      Depth: freezed == Depth
          ? _value.Depth
          : Depth // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttributesImpl implements _Attributes {
  const _$AttributesImpl(
      {this.Dimensions,
      this.ID,
      this.OD,
      @JsonKey(name: 'Chamfer Angles') this.chamfersAngles,
      this.Depth});

  factory _$AttributesImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttributesImplFromJson(json);

  @override
  final String? Dimensions;
  @override
  final String? ID;
  @override
  final String? OD;
  @override
  @JsonKey(name: 'Chamfer Angles')
  final String? chamfersAngles;
  @override
  final String? Depth;

  @override
  String toString() {
    return 'Attributes(Dimensions: $Dimensions, ID: $ID, OD: $OD, chamfersAngles: $chamfersAngles, Depth: $Depth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttributesImpl &&
            (identical(other.Dimensions, Dimensions) ||
                other.Dimensions == Dimensions) &&
            (identical(other.ID, ID) || other.ID == ID) &&
            (identical(other.OD, OD) || other.OD == OD) &&
            (identical(other.chamfersAngles, chamfersAngles) ||
                other.chamfersAngles == chamfersAngles) &&
            (identical(other.Depth, Depth) || other.Depth == Depth));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, Dimensions, ID, OD, chamfersAngles, Depth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttributesImplCopyWith<_$AttributesImpl> get copyWith =>
      __$$AttributesImplCopyWithImpl<_$AttributesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttributesImplToJson(
      this,
    );
  }
}

abstract class _Attributes implements Attributes {
  const factory _Attributes(
      {final String? Dimensions,
      final String? ID,
      final String? OD,
      @JsonKey(name: 'Chamfer Angles') final String? chamfersAngles,
      final String? Depth}) = _$AttributesImpl;

  factory _Attributes.fromJson(Map<String, dynamic> json) =
      _$AttributesImpl.fromJson;

  @override
  String? get Dimensions;
  @override
  String? get ID;
  @override
  String? get OD;
  @override
  @JsonKey(name: 'Chamfer Angles')
  String? get chamfersAngles;
  @override
  String? get Depth;
  @override
  @JsonKey(ignore: true)
  _$$AttributesImplCopyWith<_$AttributesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
