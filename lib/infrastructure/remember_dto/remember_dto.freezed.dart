// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remember_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RememberDTO _$RememberDTOFromJson(Map<String, dynamic> json) {
  return _RememberDTO.fromJson(json);
}

/// @nodoc
mixin _$RememberDTO {
  int? get isRemember => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RememberDTOCopyWith<RememberDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RememberDTOCopyWith<$Res> {
  factory $RememberDTOCopyWith(
          RememberDTO value, $Res Function(RememberDTO) then) =
      _$RememberDTOCopyWithImpl<$Res, RememberDTO>;
  @useResult
  $Res call({int? isRemember, String? email, String? password});
}

/// @nodoc
class _$RememberDTOCopyWithImpl<$Res, $Val extends RememberDTO>
    implements $RememberDTOCopyWith<$Res> {
  _$RememberDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRemember = freezed,
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      isRemember: freezed == isRemember
          ? _value.isRemember
          : isRemember // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RememberDTOImplCopyWith<$Res>
    implements $RememberDTOCopyWith<$Res> {
  factory _$$RememberDTOImplCopyWith(
          _$RememberDTOImpl value, $Res Function(_$RememberDTOImpl) then) =
      __$$RememberDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? isRemember, String? email, String? password});
}

/// @nodoc
class __$$RememberDTOImplCopyWithImpl<$Res>
    extends _$RememberDTOCopyWithImpl<$Res, _$RememberDTOImpl>
    implements _$$RememberDTOImplCopyWith<$Res> {
  __$$RememberDTOImplCopyWithImpl(
      _$RememberDTOImpl _value, $Res Function(_$RememberDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRemember = freezed,
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$RememberDTOImpl(
      isRemember: freezed == isRemember
          ? _value.isRemember
          : isRemember // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RememberDTOImpl implements _RememberDTO {
  const _$RememberDTOImpl({this.isRemember, this.email, this.password});

  factory _$RememberDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$RememberDTOImplFromJson(json);

  @override
  final int? isRemember;
  @override
  final String? email;
  @override
  final String? password;

  @override
  String toString() {
    return 'RememberDTO(isRemember: $isRemember, email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RememberDTOImpl &&
            (identical(other.isRemember, isRemember) ||
                other.isRemember == isRemember) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isRemember, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RememberDTOImplCopyWith<_$RememberDTOImpl> get copyWith =>
      __$$RememberDTOImplCopyWithImpl<_$RememberDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RememberDTOImplToJson(
      this,
    );
  }
}

abstract class _RememberDTO implements RememberDTO {
  const factory _RememberDTO(
      {final int? isRemember,
      final String? email,
      final String? password}) = _$RememberDTOImpl;

  factory _RememberDTO.fromJson(Map<String, dynamic> json) =
      _$RememberDTOImpl.fromJson;

  @override
  int? get isRemember;
  @override
  String? get email;
  @override
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$RememberDTOImplCopyWith<_$RememberDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
