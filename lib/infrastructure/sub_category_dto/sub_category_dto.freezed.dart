// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_category_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubCategoryDTO _$SubCategoryDTOFromJson(Map<String, dynamic> json) {
  return _SubCategoryDTO.fromJson(json);
}

/// @nodoc
mixin _$SubCategoryDTO {
  int? get id => throw _privateConstructorUsedError;
  int? get parent_id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubCategoryDTOCopyWith<SubCategoryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubCategoryDTOCopyWith<$Res> {
  factory $SubCategoryDTOCopyWith(
          SubCategoryDTO value, $Res Function(SubCategoryDTO) then) =
      _$SubCategoryDTOCopyWithImpl<$Res, SubCategoryDTO>;
  @useResult
  $Res call({int? id, int? parent_id, String? name, String? slug});
}

/// @nodoc
class _$SubCategoryDTOCopyWithImpl<$Res, $Val extends SubCategoryDTO>
    implements $SubCategoryDTOCopyWith<$Res> {
  _$SubCategoryDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? parent_id = freezed,
    Object? name = freezed,
    Object? slug = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      parent_id: freezed == parent_id
          ? _value.parent_id
          : parent_id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubCategoryDTOImplCopyWith<$Res>
    implements $SubCategoryDTOCopyWith<$Res> {
  factory _$$SubCategoryDTOImplCopyWith(_$SubCategoryDTOImpl value,
          $Res Function(_$SubCategoryDTOImpl) then) =
      __$$SubCategoryDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, int? parent_id, String? name, String? slug});
}

/// @nodoc
class __$$SubCategoryDTOImplCopyWithImpl<$Res>
    extends _$SubCategoryDTOCopyWithImpl<$Res, _$SubCategoryDTOImpl>
    implements _$$SubCategoryDTOImplCopyWith<$Res> {
  __$$SubCategoryDTOImplCopyWithImpl(
      _$SubCategoryDTOImpl _value, $Res Function(_$SubCategoryDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? parent_id = freezed,
    Object? name = freezed,
    Object? slug = freezed,
  }) {
    return _then(_$SubCategoryDTOImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      parent_id: freezed == parent_id
          ? _value.parent_id
          : parent_id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubCategoryDTOImpl implements _SubCategoryDTO {
  const _$SubCategoryDTOImpl({this.id, this.parent_id, this.name, this.slug});

  factory _$SubCategoryDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubCategoryDTOImplFromJson(json);

  @override
  final int? id;
  @override
  final int? parent_id;
  @override
  final String? name;
  @override
  final String? slug;

  @override
  String toString() {
    return 'SubCategoryDTO(id: $id, parent_id: $parent_id, name: $name, slug: $slug)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubCategoryDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parent_id, parent_id) ||
                other.parent_id == parent_id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, parent_id, name, slug);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubCategoryDTOImplCopyWith<_$SubCategoryDTOImpl> get copyWith =>
      __$$SubCategoryDTOImplCopyWithImpl<_$SubCategoryDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubCategoryDTOImplToJson(
      this,
    );
  }
}

abstract class _SubCategoryDTO implements SubCategoryDTO {
  const factory _SubCategoryDTO(
      {final int? id,
      final int? parent_id,
      final String? name,
      final String? slug}) = _$SubCategoryDTOImpl;

  factory _SubCategoryDTO.fromJson(Map<String, dynamic> json) =
      _$SubCategoryDTOImpl.fromJson;

  @override
  int? get id;
  @override
  int? get parent_id;
  @override
  String? get name;
  @override
  String? get slug;
  @override
  @JsonKey(ignore: true)
  _$$SubCategoryDTOImplCopyWith<_$SubCategoryDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
