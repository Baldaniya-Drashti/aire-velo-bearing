// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_option_list_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FilterOptionListDTO _$FilterOptionListDTOFromJson(Map<String, dynamic> json) {
  return _FilterOptionListDTO.fromJson(json);
}

/// @nodoc
mixin _$FilterOptionListDTO {
  int? get term_id => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  bool? get selected => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;
  bool? get is_parent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterOptionListDTOCopyWith<FilterOptionListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterOptionListDTOCopyWith<$Res> {
  factory $FilterOptionListDTOCopyWith(
          FilterOptionListDTO value, $Res Function(FilterOptionListDTO) then) =
      _$FilterOptionListDTOCopyWithImpl<$Res, FilterOptionListDTO>;
  @useResult
  $Res call(
      {int? term_id,
      String? slug,
      String? name,
      bool? selected,
      int? count,
      bool? is_parent});
}

/// @nodoc
class _$FilterOptionListDTOCopyWithImpl<$Res, $Val extends FilterOptionListDTO>
    implements $FilterOptionListDTOCopyWith<$Res> {
  _$FilterOptionListDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? term_id = freezed,
    Object? slug = freezed,
    Object? name = freezed,
    Object? selected = freezed,
    Object? count = freezed,
    Object? is_parent = freezed,
  }) {
    return _then(_value.copyWith(
      term_id: freezed == term_id
          ? _value.term_id
          : term_id // ignore: cast_nullable_to_non_nullable
              as int?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      selected: freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      is_parent: freezed == is_parent
          ? _value.is_parent
          : is_parent // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterOptionListDTOImplCopyWith<$Res>
    implements $FilterOptionListDTOCopyWith<$Res> {
  factory _$$FilterOptionListDTOImplCopyWith(_$FilterOptionListDTOImpl value,
          $Res Function(_$FilterOptionListDTOImpl) then) =
      __$$FilterOptionListDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? term_id,
      String? slug,
      String? name,
      bool? selected,
      int? count,
      bool? is_parent});
}

/// @nodoc
class __$$FilterOptionListDTOImplCopyWithImpl<$Res>
    extends _$FilterOptionListDTOCopyWithImpl<$Res, _$FilterOptionListDTOImpl>
    implements _$$FilterOptionListDTOImplCopyWith<$Res> {
  __$$FilterOptionListDTOImplCopyWithImpl(_$FilterOptionListDTOImpl _value,
      $Res Function(_$FilterOptionListDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? term_id = freezed,
    Object? slug = freezed,
    Object? name = freezed,
    Object? selected = freezed,
    Object? count = freezed,
    Object? is_parent = freezed,
  }) {
    return _then(_$FilterOptionListDTOImpl(
      term_id: freezed == term_id
          ? _value.term_id
          : term_id // ignore: cast_nullable_to_non_nullable
              as int?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      selected: freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      is_parent: freezed == is_parent
          ? _value.is_parent
          : is_parent // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FilterOptionListDTOImpl implements _FilterOptionListDTO {
  const _$FilterOptionListDTOImpl(
      {this.term_id,
      this.slug,
      this.name,
      this.selected,
      this.count,
      this.is_parent});

  factory _$FilterOptionListDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilterOptionListDTOImplFromJson(json);

  @override
  final int? term_id;
  @override
  final String? slug;
  @override
  final String? name;
  @override
  final bool? selected;
  @override
  final int? count;
  @override
  final bool? is_parent;

  @override
  String toString() {
    return 'FilterOptionListDTO(term_id: $term_id, slug: $slug, name: $name, selected: $selected, count: $count, is_parent: $is_parent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterOptionListDTOImpl &&
            (identical(other.term_id, term_id) || other.term_id == term_id) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.selected, selected) ||
                other.selected == selected) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.is_parent, is_parent) ||
                other.is_parent == is_parent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, term_id, slug, name, selected, count, is_parent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterOptionListDTOImplCopyWith<_$FilterOptionListDTOImpl> get copyWith =>
      __$$FilterOptionListDTOImplCopyWithImpl<_$FilterOptionListDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilterOptionListDTOImplToJson(
      this,
    );
  }
}

abstract class _FilterOptionListDTO implements FilterOptionListDTO {
  const factory _FilterOptionListDTO(
      {final int? term_id,
      final String? slug,
      final String? name,
      final bool? selected,
      final int? count,
      final bool? is_parent}) = _$FilterOptionListDTOImpl;

  factory _FilterOptionListDTO.fromJson(Map<String, dynamic> json) =
      _$FilterOptionListDTOImpl.fromJson;

  @override
  int? get term_id;
  @override
  String? get slug;
  @override
  String? get name;
  @override
  bool? get selected;
  @override
  int? get count;
  @override
  bool? get is_parent;
  @override
  @JsonKey(ignore: true)
  _$$FilterOptionListDTOImplCopyWith<_$FilterOptionListDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
