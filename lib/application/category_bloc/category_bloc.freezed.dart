// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SubCategoryEvent {
  int get id => throw _privateConstructorUsedError;
  bool get isRefresh => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, bool isRefresh) getSubCategoryList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, bool isRefresh)? getSubCategoryList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, bool isRefresh)? getSubCategoryList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSubCategoryList value) getSubCategoryList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSubCategoryList value)? getSubCategoryList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSubCategoryList value)? getSubCategoryList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubCategoryEventCopyWith<SubCategoryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubCategoryEventCopyWith<$Res> {
  factory $SubCategoryEventCopyWith(
          SubCategoryEvent value, $Res Function(SubCategoryEvent) then) =
      _$SubCategoryEventCopyWithImpl<$Res, SubCategoryEvent>;
  @useResult
  $Res call({int id, bool isRefresh});
}

/// @nodoc
class _$SubCategoryEventCopyWithImpl<$Res, $Val extends SubCategoryEvent>
    implements $SubCategoryEventCopyWith<$Res> {
  _$SubCategoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isRefresh = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isRefresh: null == isRefresh
          ? _value.isRefresh
          : isRefresh // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetSubCategoryListImplCopyWith<$Res>
    implements $SubCategoryEventCopyWith<$Res> {
  factory _$$GetSubCategoryListImplCopyWith(_$GetSubCategoryListImpl value,
          $Res Function(_$GetSubCategoryListImpl) then) =
      __$$GetSubCategoryListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, bool isRefresh});
}

/// @nodoc
class __$$GetSubCategoryListImplCopyWithImpl<$Res>
    extends _$SubCategoryEventCopyWithImpl<$Res, _$GetSubCategoryListImpl>
    implements _$$GetSubCategoryListImplCopyWith<$Res> {
  __$$GetSubCategoryListImplCopyWithImpl(_$GetSubCategoryListImpl _value,
      $Res Function(_$GetSubCategoryListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isRefresh = null,
  }) {
    return _then(_$GetSubCategoryListImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isRefresh: null == isRefresh
          ? _value.isRefresh
          : isRefresh // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GetSubCategoryListImpl implements GetSubCategoryList {
  const _$GetSubCategoryListImpl({this.id = 0, this.isRefresh = true});

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final bool isRefresh;

  @override
  String toString() {
    return 'SubCategoryEvent.getSubCategoryList(id: $id, isRefresh: $isRefresh)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSubCategoryListImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isRefresh, isRefresh) ||
                other.isRefresh == isRefresh));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, isRefresh);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSubCategoryListImplCopyWith<_$GetSubCategoryListImpl> get copyWith =>
      __$$GetSubCategoryListImplCopyWithImpl<_$GetSubCategoryListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, bool isRefresh) getSubCategoryList,
  }) {
    return getSubCategoryList(id, isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, bool isRefresh)? getSubCategoryList,
  }) {
    return getSubCategoryList?.call(id, isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, bool isRefresh)? getSubCategoryList,
    required TResult orElse(),
  }) {
    if (getSubCategoryList != null) {
      return getSubCategoryList(id, isRefresh);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSubCategoryList value) getSubCategoryList,
  }) {
    return getSubCategoryList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSubCategoryList value)? getSubCategoryList,
  }) {
    return getSubCategoryList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSubCategoryList value)? getSubCategoryList,
    required TResult orElse(),
  }) {
    if (getSubCategoryList != null) {
      return getSubCategoryList(this);
    }
    return orElse();
  }
}

abstract class GetSubCategoryList implements SubCategoryEvent {
  const factory GetSubCategoryList({final int id, final bool isRefresh}) =
      _$GetSubCategoryListImpl;

  @override
  int get id;
  @override
  bool get isRefresh;
  @override
  @JsonKey(ignore: true)
  _$$GetSubCategoryListImplCopyWith<_$GetSubCategoryListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubCategoryState {
  List<SubCategoryDTO> get subCategoryList =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isErrorInAPI => throw _privateConstructorUsedError;
  bool get isNoDataFound => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubCategoryStateCopyWith<SubCategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubCategoryStateCopyWith<$Res> {
  factory $SubCategoryStateCopyWith(
          SubCategoryState value, $Res Function(SubCategoryState) then) =
      _$SubCategoryStateCopyWithImpl<$Res, SubCategoryState>;
  @useResult
  $Res call(
      {List<SubCategoryDTO> subCategoryList,
      bool isLoading,
      bool isSubmitting,
      bool isErrorInAPI,
      bool isNoDataFound});
}

/// @nodoc
class _$SubCategoryStateCopyWithImpl<$Res, $Val extends SubCategoryState>
    implements $SubCategoryStateCopyWith<$Res> {
  _$SubCategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subCategoryList = null,
    Object? isLoading = null,
    Object? isSubmitting = null,
    Object? isErrorInAPI = null,
    Object? isNoDataFound = null,
  }) {
    return _then(_value.copyWith(
      subCategoryList: null == subCategoryList
          ? _value.subCategoryList
          : subCategoryList // ignore: cast_nullable_to_non_nullable
              as List<SubCategoryDTO>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isErrorInAPI: null == isErrorInAPI
          ? _value.isErrorInAPI
          : isErrorInAPI // ignore: cast_nullable_to_non_nullable
              as bool,
      isNoDataFound: null == isNoDataFound
          ? _value.isNoDataFound
          : isNoDataFound // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubCategoryStateImplCopyWith<$Res>
    implements $SubCategoryStateCopyWith<$Res> {
  factory _$$SubCategoryStateImplCopyWith(_$SubCategoryStateImpl value,
          $Res Function(_$SubCategoryStateImpl) then) =
      __$$SubCategoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<SubCategoryDTO> subCategoryList,
      bool isLoading,
      bool isSubmitting,
      bool isErrorInAPI,
      bool isNoDataFound});
}

/// @nodoc
class __$$SubCategoryStateImplCopyWithImpl<$Res>
    extends _$SubCategoryStateCopyWithImpl<$Res, _$SubCategoryStateImpl>
    implements _$$SubCategoryStateImplCopyWith<$Res> {
  __$$SubCategoryStateImplCopyWithImpl(_$SubCategoryStateImpl _value,
      $Res Function(_$SubCategoryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subCategoryList = null,
    Object? isLoading = null,
    Object? isSubmitting = null,
    Object? isErrorInAPI = null,
    Object? isNoDataFound = null,
  }) {
    return _then(_$SubCategoryStateImpl(
      subCategoryList: null == subCategoryList
          ? _value._subCategoryList
          : subCategoryList // ignore: cast_nullable_to_non_nullable
              as List<SubCategoryDTO>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isErrorInAPI: null == isErrorInAPI
          ? _value.isErrorInAPI
          : isErrorInAPI // ignore: cast_nullable_to_non_nullable
              as bool,
      isNoDataFound: null == isNoDataFound
          ? _value.isNoDataFound
          : isNoDataFound // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SubCategoryStateImpl implements _SubCategoryState {
  _$SubCategoryStateImpl(
      {required final List<SubCategoryDTO> subCategoryList,
      required this.isLoading,
      required this.isSubmitting,
      required this.isErrorInAPI,
      required this.isNoDataFound})
      : _subCategoryList = subCategoryList;

  final List<SubCategoryDTO> _subCategoryList;
  @override
  List<SubCategoryDTO> get subCategoryList {
    if (_subCategoryList is EqualUnmodifiableListView) return _subCategoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subCategoryList);
  }

  @override
  final bool isLoading;
  @override
  final bool isSubmitting;
  @override
  final bool isErrorInAPI;
  @override
  final bool isNoDataFound;

  @override
  String toString() {
    return 'SubCategoryState(subCategoryList: $subCategoryList, isLoading: $isLoading, isSubmitting: $isSubmitting, isErrorInAPI: $isErrorInAPI, isNoDataFound: $isNoDataFound)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubCategoryStateImpl &&
            const DeepCollectionEquality()
                .equals(other._subCategoryList, _subCategoryList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.isErrorInAPI, isErrorInAPI) ||
                other.isErrorInAPI == isErrorInAPI) &&
            (identical(other.isNoDataFound, isNoDataFound) ||
                other.isNoDataFound == isNoDataFound));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_subCategoryList),
      isLoading,
      isSubmitting,
      isErrorInAPI,
      isNoDataFound);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubCategoryStateImplCopyWith<_$SubCategoryStateImpl> get copyWith =>
      __$$SubCategoryStateImplCopyWithImpl<_$SubCategoryStateImpl>(
          this, _$identity);
}

abstract class _SubCategoryState implements SubCategoryState {
  factory _SubCategoryState(
      {required final List<SubCategoryDTO> subCategoryList,
      required final bool isLoading,
      required final bool isSubmitting,
      required final bool isErrorInAPI,
      required final bool isNoDataFound}) = _$SubCategoryStateImpl;

  @override
  List<SubCategoryDTO> get subCategoryList;
  @override
  bool get isLoading;
  @override
  bool get isSubmitting;
  @override
  bool get isErrorInAPI;
  @override
  bool get isNoDataFound;
  @override
  @JsonKey(ignore: true)
  _$$SubCategoryStateImplCopyWith<_$SubCategoryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
