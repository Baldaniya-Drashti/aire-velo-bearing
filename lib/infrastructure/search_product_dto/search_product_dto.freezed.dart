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
  String? get slug => throw _privateConstructorUsedError;
  Attributes? get attributes => throw _privateConstructorUsedError;

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
      String? slug,
      Attributes? attributes});

  $AttributesCopyWith<$Res>? get attributes;
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
    Object? slug = freezed,
    Object? attributes = freezed,
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
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Attributes?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AttributesCopyWith<$Res>? get attributes {
    if (_value.attributes == null) {
      return null;
    }

    return $AttributesCopyWith<$Res>(_value.attributes!, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
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
      String? slug,
      Attributes? attributes});

  @override
  $AttributesCopyWith<$Res>? get attributes;
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
    Object? slug = freezed,
    Object? attributes = freezed,
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
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
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
      this.slug,
      this.attributes})
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
  final String? slug;
  @override
  final Attributes? attributes;

  @override
  String toString() {
    return 'SearchProductDTO(id: $id, name: $name, images: $images, slug: $slug, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchProductDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(_images), slug, attributes);

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
      final String? slug,
      final Attributes? attributes}) = _$SearchProductDTOImpl;

  factory _SearchProductDTO.fromJson(Map<String, dynamic> json) =
      _$SearchProductDTOImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  List<String>? get images;
  @override
  String? get slug;
  @override
  Attributes? get attributes;
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
  List<String>? get dimensions => throw _privateConstructorUsedError;
  List<String>? get id => throw _privateConstructorUsedError;
  List<String>? get od => throw _privateConstructorUsedError;
  @JsonKey(name: 'chamfers-angles')
  List<String>? get chamfers_angles => throw _privateConstructorUsedError;
  List<String>? get depth => throw _privateConstructorUsedError;

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
      {List<String>? dimensions,
      List<String>? id,
      List<String>? od,
      @JsonKey(name: 'chamfers-angles') List<String>? chamfers_angles,
      List<String>? depth});
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
    Object? dimensions = freezed,
    Object? id = freezed,
    Object? od = freezed,
    Object? chamfers_angles = freezed,
    Object? depth = freezed,
  }) {
    return _then(_value.copyWith(
      dimensions: freezed == dimensions
          ? _value.dimensions
          : dimensions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      od: freezed == od
          ? _value.od
          : od // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      chamfers_angles: freezed == chamfers_angles
          ? _value.chamfers_angles
          : chamfers_angles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      depth: freezed == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
      {List<String>? dimensions,
      List<String>? id,
      List<String>? od,
      @JsonKey(name: 'chamfers-angles') List<String>? chamfers_angles,
      List<String>? depth});
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
    Object? dimensions = freezed,
    Object? id = freezed,
    Object? od = freezed,
    Object? chamfers_angles = freezed,
    Object? depth = freezed,
  }) {
    return _then(_$AttributesImpl(
      dimensions: freezed == dimensions
          ? _value._dimensions
          : dimensions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      id: freezed == id
          ? _value._id
          : id // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      od: freezed == od
          ? _value._od
          : od // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      chamfers_angles: freezed == chamfers_angles
          ? _value._chamfers_angles
          : chamfers_angles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      depth: freezed == depth
          ? _value._depth
          : depth // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttributesImpl implements _Attributes {
  const _$AttributesImpl(
      {final List<String>? dimensions,
      final List<String>? id,
      final List<String>? od,
      @JsonKey(name: 'chamfers-angles') final List<String>? chamfers_angles,
      final List<String>? depth})
      : _dimensions = dimensions,
        _id = id,
        _od = od,
        _chamfers_angles = chamfers_angles,
        _depth = depth;

  factory _$AttributesImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttributesImplFromJson(json);

  final List<String>? _dimensions;
  @override
  List<String>? get dimensions {
    final value = _dimensions;
    if (value == null) return null;
    if (_dimensions is EqualUnmodifiableListView) return _dimensions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _id;
  @override
  List<String>? get id {
    final value = _id;
    if (value == null) return null;
    if (_id is EqualUnmodifiableListView) return _id;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _od;
  @override
  List<String>? get od {
    final value = _od;
    if (value == null) return null;
    if (_od is EqualUnmodifiableListView) return _od;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _chamfers_angles;
  @override
  @JsonKey(name: 'chamfers-angles')
  List<String>? get chamfers_angles {
    final value = _chamfers_angles;
    if (value == null) return null;
    if (_chamfers_angles is EqualUnmodifiableListView) return _chamfers_angles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _depth;
  @override
  List<String>? get depth {
    final value = _depth;
    if (value == null) return null;
    if (_depth is EqualUnmodifiableListView) return _depth;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Attributes(dimensions: $dimensions, id: $id, od: $od, chamfers_angles: $chamfers_angles, depth: $depth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttributesImpl &&
            const DeepCollectionEquality()
                .equals(other._dimensions, _dimensions) &&
            const DeepCollectionEquality().equals(other._id, _id) &&
            const DeepCollectionEquality().equals(other._od, _od) &&
            const DeepCollectionEquality()
                .equals(other._chamfers_angles, _chamfers_angles) &&
            const DeepCollectionEquality().equals(other._depth, _depth));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_dimensions),
      const DeepCollectionEquality().hash(_id),
      const DeepCollectionEquality().hash(_od),
      const DeepCollectionEquality().hash(_chamfers_angles),
      const DeepCollectionEquality().hash(_depth));

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
      {final List<String>? dimensions,
      final List<String>? id,
      final List<String>? od,
      @JsonKey(name: 'chamfers-angles') final List<String>? chamfers_angles,
      final List<String>? depth}) = _$AttributesImpl;

  factory _Attributes.fromJson(Map<String, dynamic> json) =
      _$AttributesImpl.fromJson;

  @override
  List<String>? get dimensions;
  @override
  List<String>? get id;
  @override
  List<String>? get od;
  @override
  @JsonKey(name: 'chamfers-angles')
  List<String>? get chamfers_angles;
  @override
  List<String>? get depth;
  @override
  @JsonKey(ignore: true)
  _$$AttributesImplCopyWith<_$AttributesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
