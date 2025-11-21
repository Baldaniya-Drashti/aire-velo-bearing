// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SubCategoryDTO? val) initialEvent,
    required TResult Function(bool isRefresh) onSearch,
    required TResult Function(String? val) getSearchText,
    required TResult Function() getCategoryList,
    required TResult Function() loadAllFilterList,
    required TResult Function(FilterAttribute attribute, String value)
        filterChanged,
    required TResult Function(String value) categoryChanged,
    required TResult Function() submitFilter,
    required TResult Function() clearAllFilters,
    required TResult Function(int id) toggleFavourite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SubCategoryDTO? val)? initialEvent,
    TResult? Function(bool isRefresh)? onSearch,
    TResult? Function(String? val)? getSearchText,
    TResult? Function()? getCategoryList,
    TResult? Function()? loadAllFilterList,
    TResult? Function(FilterAttribute attribute, String value)? filterChanged,
    TResult? Function(String value)? categoryChanged,
    TResult? Function()? submitFilter,
    TResult? Function()? clearAllFilters,
    TResult? Function(int id)? toggleFavourite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SubCategoryDTO? val)? initialEvent,
    TResult Function(bool isRefresh)? onSearch,
    TResult Function(String? val)? getSearchText,
    TResult Function()? getCategoryList,
    TResult Function()? loadAllFilterList,
    TResult Function(FilterAttribute attribute, String value)? filterChanged,
    TResult Function(String value)? categoryChanged,
    TResult Function()? submitFilter,
    TResult Function()? clearAllFilters,
    TResult Function(int id)? toggleFavourite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialEvent value) initialEvent,
    required TResult Function(OnSearch value) onSearch,
    required TResult Function(GetSearchText value) getSearchText,
    required TResult Function(GetCategoryList value) getCategoryList,
    required TResult Function(LoadAllFilterList value) loadAllFilterList,
    required TResult Function(FilterChanged value) filterChanged,
    required TResult Function(CategoryChanged value) categoryChanged,
    required TResult Function(SubmitFilter value) submitFilter,
    required TResult Function(ClearAllFilters value) clearAllFilters,
    required TResult Function(ToggleFavourite value) toggleFavourite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialEvent value)? initialEvent,
    TResult? Function(OnSearch value)? onSearch,
    TResult? Function(GetSearchText value)? getSearchText,
    TResult? Function(GetCategoryList value)? getCategoryList,
    TResult? Function(LoadAllFilterList value)? loadAllFilterList,
    TResult? Function(FilterChanged value)? filterChanged,
    TResult? Function(CategoryChanged value)? categoryChanged,
    TResult? Function(SubmitFilter value)? submitFilter,
    TResult? Function(ClearAllFilters value)? clearAllFilters,
    TResult? Function(ToggleFavourite value)? toggleFavourite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialEvent value)? initialEvent,
    TResult Function(OnSearch value)? onSearch,
    TResult Function(GetSearchText value)? getSearchText,
    TResult Function(GetCategoryList value)? getCategoryList,
    TResult Function(LoadAllFilterList value)? loadAllFilterList,
    TResult Function(FilterChanged value)? filterChanged,
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(SubmitFilter value)? submitFilter,
    TResult Function(ClearAllFilters value)? clearAllFilters,
    TResult Function(ToggleFavourite value)? toggleFavourite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialEventImplCopyWith<$Res> {
  factory _$$InitialEventImplCopyWith(
          _$InitialEventImpl value, $Res Function(_$InitialEventImpl) then) =
      __$$InitialEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SubCategoryDTO? val});

  $SubCategoryDTOCopyWith<$Res>? get val;
}

/// @nodoc
class __$$InitialEventImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$InitialEventImpl>
    implements _$$InitialEventImplCopyWith<$Res> {
  __$$InitialEventImplCopyWithImpl(
      _$InitialEventImpl _value, $Res Function(_$InitialEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? val = freezed,
  }) {
    return _then(_$InitialEventImpl(
      val: freezed == val
          ? _value.val
          : val // ignore: cast_nullable_to_non_nullable
              as SubCategoryDTO?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SubCategoryDTOCopyWith<$Res>? get val {
    if (_value.val == null) {
      return null;
    }

    return $SubCategoryDTOCopyWith<$Res>(_value.val!, (value) {
      return _then(_value.copyWith(val: value));
    });
  }
}

/// @nodoc

class _$InitialEventImpl implements InitialEvent {
  const _$InitialEventImpl({required this.val});

  @override
  final SubCategoryDTO? val;

  @override
  String toString() {
    return 'SearchEvent.initialEvent(val: $val)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialEventImpl &&
            (identical(other.val, val) || other.val == val));
  }

  @override
  int get hashCode => Object.hash(runtimeType, val);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialEventImplCopyWith<_$InitialEventImpl> get copyWith =>
      __$$InitialEventImplCopyWithImpl<_$InitialEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SubCategoryDTO? val) initialEvent,
    required TResult Function(bool isRefresh) onSearch,
    required TResult Function(String? val) getSearchText,
    required TResult Function() getCategoryList,
    required TResult Function() loadAllFilterList,
    required TResult Function(FilterAttribute attribute, String value)
        filterChanged,
    required TResult Function(String value) categoryChanged,
    required TResult Function() submitFilter,
    required TResult Function() clearAllFilters,
    required TResult Function(int id) toggleFavourite,
  }) {
    return initialEvent(val);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SubCategoryDTO? val)? initialEvent,
    TResult? Function(bool isRefresh)? onSearch,
    TResult? Function(String? val)? getSearchText,
    TResult? Function()? getCategoryList,
    TResult? Function()? loadAllFilterList,
    TResult? Function(FilterAttribute attribute, String value)? filterChanged,
    TResult? Function(String value)? categoryChanged,
    TResult? Function()? submitFilter,
    TResult? Function()? clearAllFilters,
    TResult? Function(int id)? toggleFavourite,
  }) {
    return initialEvent?.call(val);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SubCategoryDTO? val)? initialEvent,
    TResult Function(bool isRefresh)? onSearch,
    TResult Function(String? val)? getSearchText,
    TResult Function()? getCategoryList,
    TResult Function()? loadAllFilterList,
    TResult Function(FilterAttribute attribute, String value)? filterChanged,
    TResult Function(String value)? categoryChanged,
    TResult Function()? submitFilter,
    TResult Function()? clearAllFilters,
    TResult Function(int id)? toggleFavourite,
    required TResult orElse(),
  }) {
    if (initialEvent != null) {
      return initialEvent(val);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialEvent value) initialEvent,
    required TResult Function(OnSearch value) onSearch,
    required TResult Function(GetSearchText value) getSearchText,
    required TResult Function(GetCategoryList value) getCategoryList,
    required TResult Function(LoadAllFilterList value) loadAllFilterList,
    required TResult Function(FilterChanged value) filterChanged,
    required TResult Function(CategoryChanged value) categoryChanged,
    required TResult Function(SubmitFilter value) submitFilter,
    required TResult Function(ClearAllFilters value) clearAllFilters,
    required TResult Function(ToggleFavourite value) toggleFavourite,
  }) {
    return initialEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialEvent value)? initialEvent,
    TResult? Function(OnSearch value)? onSearch,
    TResult? Function(GetSearchText value)? getSearchText,
    TResult? Function(GetCategoryList value)? getCategoryList,
    TResult? Function(LoadAllFilterList value)? loadAllFilterList,
    TResult? Function(FilterChanged value)? filterChanged,
    TResult? Function(CategoryChanged value)? categoryChanged,
    TResult? Function(SubmitFilter value)? submitFilter,
    TResult? Function(ClearAllFilters value)? clearAllFilters,
    TResult? Function(ToggleFavourite value)? toggleFavourite,
  }) {
    return initialEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialEvent value)? initialEvent,
    TResult Function(OnSearch value)? onSearch,
    TResult Function(GetSearchText value)? getSearchText,
    TResult Function(GetCategoryList value)? getCategoryList,
    TResult Function(LoadAllFilterList value)? loadAllFilterList,
    TResult Function(FilterChanged value)? filterChanged,
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(SubmitFilter value)? submitFilter,
    TResult Function(ClearAllFilters value)? clearAllFilters,
    TResult Function(ToggleFavourite value)? toggleFavourite,
    required TResult orElse(),
  }) {
    if (initialEvent != null) {
      return initialEvent(this);
    }
    return orElse();
  }
}

abstract class InitialEvent implements SearchEvent {
  const factory InitialEvent({required final SubCategoryDTO? val}) =
      _$InitialEventImpl;

  SubCategoryDTO? get val;
  @JsonKey(ignore: true)
  _$$InitialEventImplCopyWith<_$InitialEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnSearchImplCopyWith<$Res> {
  factory _$$OnSearchImplCopyWith(
          _$OnSearchImpl value, $Res Function(_$OnSearchImpl) then) =
      __$$OnSearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isRefresh});
}

/// @nodoc
class __$$OnSearchImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$OnSearchImpl>
    implements _$$OnSearchImplCopyWith<$Res> {
  __$$OnSearchImplCopyWithImpl(
      _$OnSearchImpl _value, $Res Function(_$OnSearchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRefresh = null,
  }) {
    return _then(_$OnSearchImpl(
      isRefresh: null == isRefresh
          ? _value.isRefresh
          : isRefresh // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$OnSearchImpl implements OnSearch {
  const _$OnSearchImpl({required this.isRefresh});

  @override
  final bool isRefresh;

  @override
  String toString() {
    return 'SearchEvent.onSearch(isRefresh: $isRefresh)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSearchImpl &&
            (identical(other.isRefresh, isRefresh) ||
                other.isRefresh == isRefresh));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isRefresh);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSearchImplCopyWith<_$OnSearchImpl> get copyWith =>
      __$$OnSearchImplCopyWithImpl<_$OnSearchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SubCategoryDTO? val) initialEvent,
    required TResult Function(bool isRefresh) onSearch,
    required TResult Function(String? val) getSearchText,
    required TResult Function() getCategoryList,
    required TResult Function() loadAllFilterList,
    required TResult Function(FilterAttribute attribute, String value)
        filterChanged,
    required TResult Function(String value) categoryChanged,
    required TResult Function() submitFilter,
    required TResult Function() clearAllFilters,
    required TResult Function(int id) toggleFavourite,
  }) {
    return onSearch(isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SubCategoryDTO? val)? initialEvent,
    TResult? Function(bool isRefresh)? onSearch,
    TResult? Function(String? val)? getSearchText,
    TResult? Function()? getCategoryList,
    TResult? Function()? loadAllFilterList,
    TResult? Function(FilterAttribute attribute, String value)? filterChanged,
    TResult? Function(String value)? categoryChanged,
    TResult? Function()? submitFilter,
    TResult? Function()? clearAllFilters,
    TResult? Function(int id)? toggleFavourite,
  }) {
    return onSearch?.call(isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SubCategoryDTO? val)? initialEvent,
    TResult Function(bool isRefresh)? onSearch,
    TResult Function(String? val)? getSearchText,
    TResult Function()? getCategoryList,
    TResult Function()? loadAllFilterList,
    TResult Function(FilterAttribute attribute, String value)? filterChanged,
    TResult Function(String value)? categoryChanged,
    TResult Function()? submitFilter,
    TResult Function()? clearAllFilters,
    TResult Function(int id)? toggleFavourite,
    required TResult orElse(),
  }) {
    if (onSearch != null) {
      return onSearch(isRefresh);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialEvent value) initialEvent,
    required TResult Function(OnSearch value) onSearch,
    required TResult Function(GetSearchText value) getSearchText,
    required TResult Function(GetCategoryList value) getCategoryList,
    required TResult Function(LoadAllFilterList value) loadAllFilterList,
    required TResult Function(FilterChanged value) filterChanged,
    required TResult Function(CategoryChanged value) categoryChanged,
    required TResult Function(SubmitFilter value) submitFilter,
    required TResult Function(ClearAllFilters value) clearAllFilters,
    required TResult Function(ToggleFavourite value) toggleFavourite,
  }) {
    return onSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialEvent value)? initialEvent,
    TResult? Function(OnSearch value)? onSearch,
    TResult? Function(GetSearchText value)? getSearchText,
    TResult? Function(GetCategoryList value)? getCategoryList,
    TResult? Function(LoadAllFilterList value)? loadAllFilterList,
    TResult? Function(FilterChanged value)? filterChanged,
    TResult? Function(CategoryChanged value)? categoryChanged,
    TResult? Function(SubmitFilter value)? submitFilter,
    TResult? Function(ClearAllFilters value)? clearAllFilters,
    TResult? Function(ToggleFavourite value)? toggleFavourite,
  }) {
    return onSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialEvent value)? initialEvent,
    TResult Function(OnSearch value)? onSearch,
    TResult Function(GetSearchText value)? getSearchText,
    TResult Function(GetCategoryList value)? getCategoryList,
    TResult Function(LoadAllFilterList value)? loadAllFilterList,
    TResult Function(FilterChanged value)? filterChanged,
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(SubmitFilter value)? submitFilter,
    TResult Function(ClearAllFilters value)? clearAllFilters,
    TResult Function(ToggleFavourite value)? toggleFavourite,
    required TResult orElse(),
  }) {
    if (onSearch != null) {
      return onSearch(this);
    }
    return orElse();
  }
}

abstract class OnSearch implements SearchEvent {
  const factory OnSearch({required final bool isRefresh}) = _$OnSearchImpl;

  bool get isRefresh;
  @JsonKey(ignore: true)
  _$$OnSearchImplCopyWith<_$OnSearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetSearchTextImplCopyWith<$Res> {
  factory _$$GetSearchTextImplCopyWith(
          _$GetSearchTextImpl value, $Res Function(_$GetSearchTextImpl) then) =
      __$$GetSearchTextImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? val});
}

/// @nodoc
class __$$GetSearchTextImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$GetSearchTextImpl>
    implements _$$GetSearchTextImplCopyWith<$Res> {
  __$$GetSearchTextImplCopyWithImpl(
      _$GetSearchTextImpl _value, $Res Function(_$GetSearchTextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? val = freezed,
  }) {
    return _then(_$GetSearchTextImpl(
      val: freezed == val
          ? _value.val
          : val // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetSearchTextImpl implements GetSearchText {
  const _$GetSearchTextImpl({required this.val});

  @override
  final String? val;

  @override
  String toString() {
    return 'SearchEvent.getSearchText(val: $val)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSearchTextImpl &&
            (identical(other.val, val) || other.val == val));
  }

  @override
  int get hashCode => Object.hash(runtimeType, val);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSearchTextImplCopyWith<_$GetSearchTextImpl> get copyWith =>
      __$$GetSearchTextImplCopyWithImpl<_$GetSearchTextImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SubCategoryDTO? val) initialEvent,
    required TResult Function(bool isRefresh) onSearch,
    required TResult Function(String? val) getSearchText,
    required TResult Function() getCategoryList,
    required TResult Function() loadAllFilterList,
    required TResult Function(FilterAttribute attribute, String value)
        filterChanged,
    required TResult Function(String value) categoryChanged,
    required TResult Function() submitFilter,
    required TResult Function() clearAllFilters,
    required TResult Function(int id) toggleFavourite,
  }) {
    return getSearchText(val);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SubCategoryDTO? val)? initialEvent,
    TResult? Function(bool isRefresh)? onSearch,
    TResult? Function(String? val)? getSearchText,
    TResult? Function()? getCategoryList,
    TResult? Function()? loadAllFilterList,
    TResult? Function(FilterAttribute attribute, String value)? filterChanged,
    TResult? Function(String value)? categoryChanged,
    TResult? Function()? submitFilter,
    TResult? Function()? clearAllFilters,
    TResult? Function(int id)? toggleFavourite,
  }) {
    return getSearchText?.call(val);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SubCategoryDTO? val)? initialEvent,
    TResult Function(bool isRefresh)? onSearch,
    TResult Function(String? val)? getSearchText,
    TResult Function()? getCategoryList,
    TResult Function()? loadAllFilterList,
    TResult Function(FilterAttribute attribute, String value)? filterChanged,
    TResult Function(String value)? categoryChanged,
    TResult Function()? submitFilter,
    TResult Function()? clearAllFilters,
    TResult Function(int id)? toggleFavourite,
    required TResult orElse(),
  }) {
    if (getSearchText != null) {
      return getSearchText(val);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialEvent value) initialEvent,
    required TResult Function(OnSearch value) onSearch,
    required TResult Function(GetSearchText value) getSearchText,
    required TResult Function(GetCategoryList value) getCategoryList,
    required TResult Function(LoadAllFilterList value) loadAllFilterList,
    required TResult Function(FilterChanged value) filterChanged,
    required TResult Function(CategoryChanged value) categoryChanged,
    required TResult Function(SubmitFilter value) submitFilter,
    required TResult Function(ClearAllFilters value) clearAllFilters,
    required TResult Function(ToggleFavourite value) toggleFavourite,
  }) {
    return getSearchText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialEvent value)? initialEvent,
    TResult? Function(OnSearch value)? onSearch,
    TResult? Function(GetSearchText value)? getSearchText,
    TResult? Function(GetCategoryList value)? getCategoryList,
    TResult? Function(LoadAllFilterList value)? loadAllFilterList,
    TResult? Function(FilterChanged value)? filterChanged,
    TResult? Function(CategoryChanged value)? categoryChanged,
    TResult? Function(SubmitFilter value)? submitFilter,
    TResult? Function(ClearAllFilters value)? clearAllFilters,
    TResult? Function(ToggleFavourite value)? toggleFavourite,
  }) {
    return getSearchText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialEvent value)? initialEvent,
    TResult Function(OnSearch value)? onSearch,
    TResult Function(GetSearchText value)? getSearchText,
    TResult Function(GetCategoryList value)? getCategoryList,
    TResult Function(LoadAllFilterList value)? loadAllFilterList,
    TResult Function(FilterChanged value)? filterChanged,
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(SubmitFilter value)? submitFilter,
    TResult Function(ClearAllFilters value)? clearAllFilters,
    TResult Function(ToggleFavourite value)? toggleFavourite,
    required TResult orElse(),
  }) {
    if (getSearchText != null) {
      return getSearchText(this);
    }
    return orElse();
  }
}

abstract class GetSearchText implements SearchEvent {
  const factory GetSearchText({required final String? val}) =
      _$GetSearchTextImpl;

  String? get val;
  @JsonKey(ignore: true)
  _$$GetSearchTextImplCopyWith<_$GetSearchTextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCategoryListImplCopyWith<$Res> {
  factory _$$GetCategoryListImplCopyWith(_$GetCategoryListImpl value,
          $Res Function(_$GetCategoryListImpl) then) =
      __$$GetCategoryListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCategoryListImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$GetCategoryListImpl>
    implements _$$GetCategoryListImplCopyWith<$Res> {
  __$$GetCategoryListImplCopyWithImpl(
      _$GetCategoryListImpl _value, $Res Function(_$GetCategoryListImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCategoryListImpl implements GetCategoryList {
  const _$GetCategoryListImpl();

  @override
  String toString() {
    return 'SearchEvent.getCategoryList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCategoryListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SubCategoryDTO? val) initialEvent,
    required TResult Function(bool isRefresh) onSearch,
    required TResult Function(String? val) getSearchText,
    required TResult Function() getCategoryList,
    required TResult Function() loadAllFilterList,
    required TResult Function(FilterAttribute attribute, String value)
        filterChanged,
    required TResult Function(String value) categoryChanged,
    required TResult Function() submitFilter,
    required TResult Function() clearAllFilters,
    required TResult Function(int id) toggleFavourite,
  }) {
    return getCategoryList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SubCategoryDTO? val)? initialEvent,
    TResult? Function(bool isRefresh)? onSearch,
    TResult? Function(String? val)? getSearchText,
    TResult? Function()? getCategoryList,
    TResult? Function()? loadAllFilterList,
    TResult? Function(FilterAttribute attribute, String value)? filterChanged,
    TResult? Function(String value)? categoryChanged,
    TResult? Function()? submitFilter,
    TResult? Function()? clearAllFilters,
    TResult? Function(int id)? toggleFavourite,
  }) {
    return getCategoryList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SubCategoryDTO? val)? initialEvent,
    TResult Function(bool isRefresh)? onSearch,
    TResult Function(String? val)? getSearchText,
    TResult Function()? getCategoryList,
    TResult Function()? loadAllFilterList,
    TResult Function(FilterAttribute attribute, String value)? filterChanged,
    TResult Function(String value)? categoryChanged,
    TResult Function()? submitFilter,
    TResult Function()? clearAllFilters,
    TResult Function(int id)? toggleFavourite,
    required TResult orElse(),
  }) {
    if (getCategoryList != null) {
      return getCategoryList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialEvent value) initialEvent,
    required TResult Function(OnSearch value) onSearch,
    required TResult Function(GetSearchText value) getSearchText,
    required TResult Function(GetCategoryList value) getCategoryList,
    required TResult Function(LoadAllFilterList value) loadAllFilterList,
    required TResult Function(FilterChanged value) filterChanged,
    required TResult Function(CategoryChanged value) categoryChanged,
    required TResult Function(SubmitFilter value) submitFilter,
    required TResult Function(ClearAllFilters value) clearAllFilters,
    required TResult Function(ToggleFavourite value) toggleFavourite,
  }) {
    return getCategoryList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialEvent value)? initialEvent,
    TResult? Function(OnSearch value)? onSearch,
    TResult? Function(GetSearchText value)? getSearchText,
    TResult? Function(GetCategoryList value)? getCategoryList,
    TResult? Function(LoadAllFilterList value)? loadAllFilterList,
    TResult? Function(FilterChanged value)? filterChanged,
    TResult? Function(CategoryChanged value)? categoryChanged,
    TResult? Function(SubmitFilter value)? submitFilter,
    TResult? Function(ClearAllFilters value)? clearAllFilters,
    TResult? Function(ToggleFavourite value)? toggleFavourite,
  }) {
    return getCategoryList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialEvent value)? initialEvent,
    TResult Function(OnSearch value)? onSearch,
    TResult Function(GetSearchText value)? getSearchText,
    TResult Function(GetCategoryList value)? getCategoryList,
    TResult Function(LoadAllFilterList value)? loadAllFilterList,
    TResult Function(FilterChanged value)? filterChanged,
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(SubmitFilter value)? submitFilter,
    TResult Function(ClearAllFilters value)? clearAllFilters,
    TResult Function(ToggleFavourite value)? toggleFavourite,
    required TResult orElse(),
  }) {
    if (getCategoryList != null) {
      return getCategoryList(this);
    }
    return orElse();
  }
}

abstract class GetCategoryList implements SearchEvent {
  const factory GetCategoryList() = _$GetCategoryListImpl;
}

/// @nodoc
abstract class _$$LoadAllFilterListImplCopyWith<$Res> {
  factory _$$LoadAllFilterListImplCopyWith(_$LoadAllFilterListImpl value,
          $Res Function(_$LoadAllFilterListImpl) then) =
      __$$LoadAllFilterListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadAllFilterListImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$LoadAllFilterListImpl>
    implements _$$LoadAllFilterListImplCopyWith<$Res> {
  __$$LoadAllFilterListImplCopyWithImpl(_$LoadAllFilterListImpl _value,
      $Res Function(_$LoadAllFilterListImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadAllFilterListImpl implements LoadAllFilterList {
  const _$LoadAllFilterListImpl();

  @override
  String toString() {
    return 'SearchEvent.loadAllFilterList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadAllFilterListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SubCategoryDTO? val) initialEvent,
    required TResult Function(bool isRefresh) onSearch,
    required TResult Function(String? val) getSearchText,
    required TResult Function() getCategoryList,
    required TResult Function() loadAllFilterList,
    required TResult Function(FilterAttribute attribute, String value)
        filterChanged,
    required TResult Function(String value) categoryChanged,
    required TResult Function() submitFilter,
    required TResult Function() clearAllFilters,
    required TResult Function(int id) toggleFavourite,
  }) {
    return loadAllFilterList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SubCategoryDTO? val)? initialEvent,
    TResult? Function(bool isRefresh)? onSearch,
    TResult? Function(String? val)? getSearchText,
    TResult? Function()? getCategoryList,
    TResult? Function()? loadAllFilterList,
    TResult? Function(FilterAttribute attribute, String value)? filterChanged,
    TResult? Function(String value)? categoryChanged,
    TResult? Function()? submitFilter,
    TResult? Function()? clearAllFilters,
    TResult? Function(int id)? toggleFavourite,
  }) {
    return loadAllFilterList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SubCategoryDTO? val)? initialEvent,
    TResult Function(bool isRefresh)? onSearch,
    TResult Function(String? val)? getSearchText,
    TResult Function()? getCategoryList,
    TResult Function()? loadAllFilterList,
    TResult Function(FilterAttribute attribute, String value)? filterChanged,
    TResult Function(String value)? categoryChanged,
    TResult Function()? submitFilter,
    TResult Function()? clearAllFilters,
    TResult Function(int id)? toggleFavourite,
    required TResult orElse(),
  }) {
    if (loadAllFilterList != null) {
      return loadAllFilterList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialEvent value) initialEvent,
    required TResult Function(OnSearch value) onSearch,
    required TResult Function(GetSearchText value) getSearchText,
    required TResult Function(GetCategoryList value) getCategoryList,
    required TResult Function(LoadAllFilterList value) loadAllFilterList,
    required TResult Function(FilterChanged value) filterChanged,
    required TResult Function(CategoryChanged value) categoryChanged,
    required TResult Function(SubmitFilter value) submitFilter,
    required TResult Function(ClearAllFilters value) clearAllFilters,
    required TResult Function(ToggleFavourite value) toggleFavourite,
  }) {
    return loadAllFilterList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialEvent value)? initialEvent,
    TResult? Function(OnSearch value)? onSearch,
    TResult? Function(GetSearchText value)? getSearchText,
    TResult? Function(GetCategoryList value)? getCategoryList,
    TResult? Function(LoadAllFilterList value)? loadAllFilterList,
    TResult? Function(FilterChanged value)? filterChanged,
    TResult? Function(CategoryChanged value)? categoryChanged,
    TResult? Function(SubmitFilter value)? submitFilter,
    TResult? Function(ClearAllFilters value)? clearAllFilters,
    TResult? Function(ToggleFavourite value)? toggleFavourite,
  }) {
    return loadAllFilterList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialEvent value)? initialEvent,
    TResult Function(OnSearch value)? onSearch,
    TResult Function(GetSearchText value)? getSearchText,
    TResult Function(GetCategoryList value)? getCategoryList,
    TResult Function(LoadAllFilterList value)? loadAllFilterList,
    TResult Function(FilterChanged value)? filterChanged,
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(SubmitFilter value)? submitFilter,
    TResult Function(ClearAllFilters value)? clearAllFilters,
    TResult Function(ToggleFavourite value)? toggleFavourite,
    required TResult orElse(),
  }) {
    if (loadAllFilterList != null) {
      return loadAllFilterList(this);
    }
    return orElse();
  }
}

abstract class LoadAllFilterList implements SearchEvent {
  const factory LoadAllFilterList() = _$LoadAllFilterListImpl;
}

/// @nodoc
abstract class _$$FilterChangedImplCopyWith<$Res> {
  factory _$$FilterChangedImplCopyWith(
          _$FilterChangedImpl value, $Res Function(_$FilterChangedImpl) then) =
      __$$FilterChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FilterAttribute attribute, String value});
}

/// @nodoc
class __$$FilterChangedImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$FilterChangedImpl>
    implements _$$FilterChangedImplCopyWith<$Res> {
  __$$FilterChangedImplCopyWithImpl(
      _$FilterChangedImpl _value, $Res Function(_$FilterChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attribute = null,
    Object? value = null,
  }) {
    return _then(_$FilterChangedImpl(
      attribute: null == attribute
          ? _value.attribute
          : attribute // ignore: cast_nullable_to_non_nullable
              as FilterAttribute,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FilterChangedImpl implements FilterChanged {
  const _$FilterChangedImpl({required this.attribute, required this.value});

  @override
  final FilterAttribute attribute;
  @override
  final String value;

  @override
  String toString() {
    return 'SearchEvent.filterChanged(attribute: $attribute, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterChangedImpl &&
            (identical(other.attribute, attribute) ||
                other.attribute == attribute) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, attribute, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterChangedImplCopyWith<_$FilterChangedImpl> get copyWith =>
      __$$FilterChangedImplCopyWithImpl<_$FilterChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SubCategoryDTO? val) initialEvent,
    required TResult Function(bool isRefresh) onSearch,
    required TResult Function(String? val) getSearchText,
    required TResult Function() getCategoryList,
    required TResult Function() loadAllFilterList,
    required TResult Function(FilterAttribute attribute, String value)
        filterChanged,
    required TResult Function(String value) categoryChanged,
    required TResult Function() submitFilter,
    required TResult Function() clearAllFilters,
    required TResult Function(int id) toggleFavourite,
  }) {
    return filterChanged(attribute, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SubCategoryDTO? val)? initialEvent,
    TResult? Function(bool isRefresh)? onSearch,
    TResult? Function(String? val)? getSearchText,
    TResult? Function()? getCategoryList,
    TResult? Function()? loadAllFilterList,
    TResult? Function(FilterAttribute attribute, String value)? filterChanged,
    TResult? Function(String value)? categoryChanged,
    TResult? Function()? submitFilter,
    TResult? Function()? clearAllFilters,
    TResult? Function(int id)? toggleFavourite,
  }) {
    return filterChanged?.call(attribute, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SubCategoryDTO? val)? initialEvent,
    TResult Function(bool isRefresh)? onSearch,
    TResult Function(String? val)? getSearchText,
    TResult Function()? getCategoryList,
    TResult Function()? loadAllFilterList,
    TResult Function(FilterAttribute attribute, String value)? filterChanged,
    TResult Function(String value)? categoryChanged,
    TResult Function()? submitFilter,
    TResult Function()? clearAllFilters,
    TResult Function(int id)? toggleFavourite,
    required TResult orElse(),
  }) {
    if (filterChanged != null) {
      return filterChanged(attribute, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialEvent value) initialEvent,
    required TResult Function(OnSearch value) onSearch,
    required TResult Function(GetSearchText value) getSearchText,
    required TResult Function(GetCategoryList value) getCategoryList,
    required TResult Function(LoadAllFilterList value) loadAllFilterList,
    required TResult Function(FilterChanged value) filterChanged,
    required TResult Function(CategoryChanged value) categoryChanged,
    required TResult Function(SubmitFilter value) submitFilter,
    required TResult Function(ClearAllFilters value) clearAllFilters,
    required TResult Function(ToggleFavourite value) toggleFavourite,
  }) {
    return filterChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialEvent value)? initialEvent,
    TResult? Function(OnSearch value)? onSearch,
    TResult? Function(GetSearchText value)? getSearchText,
    TResult? Function(GetCategoryList value)? getCategoryList,
    TResult? Function(LoadAllFilterList value)? loadAllFilterList,
    TResult? Function(FilterChanged value)? filterChanged,
    TResult? Function(CategoryChanged value)? categoryChanged,
    TResult? Function(SubmitFilter value)? submitFilter,
    TResult? Function(ClearAllFilters value)? clearAllFilters,
    TResult? Function(ToggleFavourite value)? toggleFavourite,
  }) {
    return filterChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialEvent value)? initialEvent,
    TResult Function(OnSearch value)? onSearch,
    TResult Function(GetSearchText value)? getSearchText,
    TResult Function(GetCategoryList value)? getCategoryList,
    TResult Function(LoadAllFilterList value)? loadAllFilterList,
    TResult Function(FilterChanged value)? filterChanged,
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(SubmitFilter value)? submitFilter,
    TResult Function(ClearAllFilters value)? clearAllFilters,
    TResult Function(ToggleFavourite value)? toggleFavourite,
    required TResult orElse(),
  }) {
    if (filterChanged != null) {
      return filterChanged(this);
    }
    return orElse();
  }
}

abstract class FilterChanged implements SearchEvent {
  const factory FilterChanged(
      {required final FilterAttribute attribute,
      required final String value}) = _$FilterChangedImpl;

  FilterAttribute get attribute;
  String get value;
  @JsonKey(ignore: true)
  _$$FilterChangedImplCopyWith<_$FilterChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryChangedImplCopyWith<$Res> {
  factory _$$CategoryChangedImplCopyWith(_$CategoryChangedImpl value,
          $Res Function(_$CategoryChangedImpl) then) =
      __$$CategoryChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$CategoryChangedImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$CategoryChangedImpl>
    implements _$$CategoryChangedImplCopyWith<$Res> {
  __$$CategoryChangedImplCopyWithImpl(
      _$CategoryChangedImpl _value, $Res Function(_$CategoryChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$CategoryChangedImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CategoryChangedImpl implements CategoryChanged {
  const _$CategoryChangedImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'SearchEvent.categoryChanged(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryChangedImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryChangedImplCopyWith<_$CategoryChangedImpl> get copyWith =>
      __$$CategoryChangedImplCopyWithImpl<_$CategoryChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SubCategoryDTO? val) initialEvent,
    required TResult Function(bool isRefresh) onSearch,
    required TResult Function(String? val) getSearchText,
    required TResult Function() getCategoryList,
    required TResult Function() loadAllFilterList,
    required TResult Function(FilterAttribute attribute, String value)
        filterChanged,
    required TResult Function(String value) categoryChanged,
    required TResult Function() submitFilter,
    required TResult Function() clearAllFilters,
    required TResult Function(int id) toggleFavourite,
  }) {
    return categoryChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SubCategoryDTO? val)? initialEvent,
    TResult? Function(bool isRefresh)? onSearch,
    TResult? Function(String? val)? getSearchText,
    TResult? Function()? getCategoryList,
    TResult? Function()? loadAllFilterList,
    TResult? Function(FilterAttribute attribute, String value)? filterChanged,
    TResult? Function(String value)? categoryChanged,
    TResult? Function()? submitFilter,
    TResult? Function()? clearAllFilters,
    TResult? Function(int id)? toggleFavourite,
  }) {
    return categoryChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SubCategoryDTO? val)? initialEvent,
    TResult Function(bool isRefresh)? onSearch,
    TResult Function(String? val)? getSearchText,
    TResult Function()? getCategoryList,
    TResult Function()? loadAllFilterList,
    TResult Function(FilterAttribute attribute, String value)? filterChanged,
    TResult Function(String value)? categoryChanged,
    TResult Function()? submitFilter,
    TResult Function()? clearAllFilters,
    TResult Function(int id)? toggleFavourite,
    required TResult orElse(),
  }) {
    if (categoryChanged != null) {
      return categoryChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialEvent value) initialEvent,
    required TResult Function(OnSearch value) onSearch,
    required TResult Function(GetSearchText value) getSearchText,
    required TResult Function(GetCategoryList value) getCategoryList,
    required TResult Function(LoadAllFilterList value) loadAllFilterList,
    required TResult Function(FilterChanged value) filterChanged,
    required TResult Function(CategoryChanged value) categoryChanged,
    required TResult Function(SubmitFilter value) submitFilter,
    required TResult Function(ClearAllFilters value) clearAllFilters,
    required TResult Function(ToggleFavourite value) toggleFavourite,
  }) {
    return categoryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialEvent value)? initialEvent,
    TResult? Function(OnSearch value)? onSearch,
    TResult? Function(GetSearchText value)? getSearchText,
    TResult? Function(GetCategoryList value)? getCategoryList,
    TResult? Function(LoadAllFilterList value)? loadAllFilterList,
    TResult? Function(FilterChanged value)? filterChanged,
    TResult? Function(CategoryChanged value)? categoryChanged,
    TResult? Function(SubmitFilter value)? submitFilter,
    TResult? Function(ClearAllFilters value)? clearAllFilters,
    TResult? Function(ToggleFavourite value)? toggleFavourite,
  }) {
    return categoryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialEvent value)? initialEvent,
    TResult Function(OnSearch value)? onSearch,
    TResult Function(GetSearchText value)? getSearchText,
    TResult Function(GetCategoryList value)? getCategoryList,
    TResult Function(LoadAllFilterList value)? loadAllFilterList,
    TResult Function(FilterChanged value)? filterChanged,
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(SubmitFilter value)? submitFilter,
    TResult Function(ClearAllFilters value)? clearAllFilters,
    TResult Function(ToggleFavourite value)? toggleFavourite,
    required TResult orElse(),
  }) {
    if (categoryChanged != null) {
      return categoryChanged(this);
    }
    return orElse();
  }
}

abstract class CategoryChanged implements SearchEvent {
  const factory CategoryChanged({required final String value}) =
      _$CategoryChangedImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$CategoryChangedImplCopyWith<_$CategoryChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitFilterImplCopyWith<$Res> {
  factory _$$SubmitFilterImplCopyWith(
          _$SubmitFilterImpl value, $Res Function(_$SubmitFilterImpl) then) =
      __$$SubmitFilterImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitFilterImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SubmitFilterImpl>
    implements _$$SubmitFilterImplCopyWith<$Res> {
  __$$SubmitFilterImplCopyWithImpl(
      _$SubmitFilterImpl _value, $Res Function(_$SubmitFilterImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SubmitFilterImpl implements SubmitFilter {
  const _$SubmitFilterImpl();

  @override
  String toString() {
    return 'SearchEvent.submitFilter()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmitFilterImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SubCategoryDTO? val) initialEvent,
    required TResult Function(bool isRefresh) onSearch,
    required TResult Function(String? val) getSearchText,
    required TResult Function() getCategoryList,
    required TResult Function() loadAllFilterList,
    required TResult Function(FilterAttribute attribute, String value)
        filterChanged,
    required TResult Function(String value) categoryChanged,
    required TResult Function() submitFilter,
    required TResult Function() clearAllFilters,
    required TResult Function(int id) toggleFavourite,
  }) {
    return submitFilter();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SubCategoryDTO? val)? initialEvent,
    TResult? Function(bool isRefresh)? onSearch,
    TResult? Function(String? val)? getSearchText,
    TResult? Function()? getCategoryList,
    TResult? Function()? loadAllFilterList,
    TResult? Function(FilterAttribute attribute, String value)? filterChanged,
    TResult? Function(String value)? categoryChanged,
    TResult? Function()? submitFilter,
    TResult? Function()? clearAllFilters,
    TResult? Function(int id)? toggleFavourite,
  }) {
    return submitFilter?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SubCategoryDTO? val)? initialEvent,
    TResult Function(bool isRefresh)? onSearch,
    TResult Function(String? val)? getSearchText,
    TResult Function()? getCategoryList,
    TResult Function()? loadAllFilterList,
    TResult Function(FilterAttribute attribute, String value)? filterChanged,
    TResult Function(String value)? categoryChanged,
    TResult Function()? submitFilter,
    TResult Function()? clearAllFilters,
    TResult Function(int id)? toggleFavourite,
    required TResult orElse(),
  }) {
    if (submitFilter != null) {
      return submitFilter();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialEvent value) initialEvent,
    required TResult Function(OnSearch value) onSearch,
    required TResult Function(GetSearchText value) getSearchText,
    required TResult Function(GetCategoryList value) getCategoryList,
    required TResult Function(LoadAllFilterList value) loadAllFilterList,
    required TResult Function(FilterChanged value) filterChanged,
    required TResult Function(CategoryChanged value) categoryChanged,
    required TResult Function(SubmitFilter value) submitFilter,
    required TResult Function(ClearAllFilters value) clearAllFilters,
    required TResult Function(ToggleFavourite value) toggleFavourite,
  }) {
    return submitFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialEvent value)? initialEvent,
    TResult? Function(OnSearch value)? onSearch,
    TResult? Function(GetSearchText value)? getSearchText,
    TResult? Function(GetCategoryList value)? getCategoryList,
    TResult? Function(LoadAllFilterList value)? loadAllFilterList,
    TResult? Function(FilterChanged value)? filterChanged,
    TResult? Function(CategoryChanged value)? categoryChanged,
    TResult? Function(SubmitFilter value)? submitFilter,
    TResult? Function(ClearAllFilters value)? clearAllFilters,
    TResult? Function(ToggleFavourite value)? toggleFavourite,
  }) {
    return submitFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialEvent value)? initialEvent,
    TResult Function(OnSearch value)? onSearch,
    TResult Function(GetSearchText value)? getSearchText,
    TResult Function(GetCategoryList value)? getCategoryList,
    TResult Function(LoadAllFilterList value)? loadAllFilterList,
    TResult Function(FilterChanged value)? filterChanged,
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(SubmitFilter value)? submitFilter,
    TResult Function(ClearAllFilters value)? clearAllFilters,
    TResult Function(ToggleFavourite value)? toggleFavourite,
    required TResult orElse(),
  }) {
    if (submitFilter != null) {
      return submitFilter(this);
    }
    return orElse();
  }
}

abstract class SubmitFilter implements SearchEvent {
  const factory SubmitFilter() = _$SubmitFilterImpl;
}

/// @nodoc
abstract class _$$ClearAllFiltersImplCopyWith<$Res> {
  factory _$$ClearAllFiltersImplCopyWith(_$ClearAllFiltersImpl value,
          $Res Function(_$ClearAllFiltersImpl) then) =
      __$$ClearAllFiltersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearAllFiltersImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$ClearAllFiltersImpl>
    implements _$$ClearAllFiltersImplCopyWith<$Res> {
  __$$ClearAllFiltersImplCopyWithImpl(
      _$ClearAllFiltersImpl _value, $Res Function(_$ClearAllFiltersImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearAllFiltersImpl implements ClearAllFilters {
  const _$ClearAllFiltersImpl();

  @override
  String toString() {
    return 'SearchEvent.clearAllFilters()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearAllFiltersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SubCategoryDTO? val) initialEvent,
    required TResult Function(bool isRefresh) onSearch,
    required TResult Function(String? val) getSearchText,
    required TResult Function() getCategoryList,
    required TResult Function() loadAllFilterList,
    required TResult Function(FilterAttribute attribute, String value)
        filterChanged,
    required TResult Function(String value) categoryChanged,
    required TResult Function() submitFilter,
    required TResult Function() clearAllFilters,
    required TResult Function(int id) toggleFavourite,
  }) {
    return clearAllFilters();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SubCategoryDTO? val)? initialEvent,
    TResult? Function(bool isRefresh)? onSearch,
    TResult? Function(String? val)? getSearchText,
    TResult? Function()? getCategoryList,
    TResult? Function()? loadAllFilterList,
    TResult? Function(FilterAttribute attribute, String value)? filterChanged,
    TResult? Function(String value)? categoryChanged,
    TResult? Function()? submitFilter,
    TResult? Function()? clearAllFilters,
    TResult? Function(int id)? toggleFavourite,
  }) {
    return clearAllFilters?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SubCategoryDTO? val)? initialEvent,
    TResult Function(bool isRefresh)? onSearch,
    TResult Function(String? val)? getSearchText,
    TResult Function()? getCategoryList,
    TResult Function()? loadAllFilterList,
    TResult Function(FilterAttribute attribute, String value)? filterChanged,
    TResult Function(String value)? categoryChanged,
    TResult Function()? submitFilter,
    TResult Function()? clearAllFilters,
    TResult Function(int id)? toggleFavourite,
    required TResult orElse(),
  }) {
    if (clearAllFilters != null) {
      return clearAllFilters();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialEvent value) initialEvent,
    required TResult Function(OnSearch value) onSearch,
    required TResult Function(GetSearchText value) getSearchText,
    required TResult Function(GetCategoryList value) getCategoryList,
    required TResult Function(LoadAllFilterList value) loadAllFilterList,
    required TResult Function(FilterChanged value) filterChanged,
    required TResult Function(CategoryChanged value) categoryChanged,
    required TResult Function(SubmitFilter value) submitFilter,
    required TResult Function(ClearAllFilters value) clearAllFilters,
    required TResult Function(ToggleFavourite value) toggleFavourite,
  }) {
    return clearAllFilters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialEvent value)? initialEvent,
    TResult? Function(OnSearch value)? onSearch,
    TResult? Function(GetSearchText value)? getSearchText,
    TResult? Function(GetCategoryList value)? getCategoryList,
    TResult? Function(LoadAllFilterList value)? loadAllFilterList,
    TResult? Function(FilterChanged value)? filterChanged,
    TResult? Function(CategoryChanged value)? categoryChanged,
    TResult? Function(SubmitFilter value)? submitFilter,
    TResult? Function(ClearAllFilters value)? clearAllFilters,
    TResult? Function(ToggleFavourite value)? toggleFavourite,
  }) {
    return clearAllFilters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialEvent value)? initialEvent,
    TResult Function(OnSearch value)? onSearch,
    TResult Function(GetSearchText value)? getSearchText,
    TResult Function(GetCategoryList value)? getCategoryList,
    TResult Function(LoadAllFilterList value)? loadAllFilterList,
    TResult Function(FilterChanged value)? filterChanged,
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(SubmitFilter value)? submitFilter,
    TResult Function(ClearAllFilters value)? clearAllFilters,
    TResult Function(ToggleFavourite value)? toggleFavourite,
    required TResult orElse(),
  }) {
    if (clearAllFilters != null) {
      return clearAllFilters(this);
    }
    return orElse();
  }
}

abstract class ClearAllFilters implements SearchEvent {
  const factory ClearAllFilters() = _$ClearAllFiltersImpl;
}

/// @nodoc
abstract class _$$ToggleFavouriteImplCopyWith<$Res> {
  factory _$$ToggleFavouriteImplCopyWith(_$ToggleFavouriteImpl value,
          $Res Function(_$ToggleFavouriteImpl) then) =
      __$$ToggleFavouriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$ToggleFavouriteImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$ToggleFavouriteImpl>
    implements _$$ToggleFavouriteImplCopyWith<$Res> {
  __$$ToggleFavouriteImplCopyWithImpl(
      _$ToggleFavouriteImpl _value, $Res Function(_$ToggleFavouriteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$ToggleFavouriteImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ToggleFavouriteImpl implements ToggleFavourite {
  const _$ToggleFavouriteImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'SearchEvent.toggleFavourite(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleFavouriteImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleFavouriteImplCopyWith<_$ToggleFavouriteImpl> get copyWith =>
      __$$ToggleFavouriteImplCopyWithImpl<_$ToggleFavouriteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SubCategoryDTO? val) initialEvent,
    required TResult Function(bool isRefresh) onSearch,
    required TResult Function(String? val) getSearchText,
    required TResult Function() getCategoryList,
    required TResult Function() loadAllFilterList,
    required TResult Function(FilterAttribute attribute, String value)
        filterChanged,
    required TResult Function(String value) categoryChanged,
    required TResult Function() submitFilter,
    required TResult Function() clearAllFilters,
    required TResult Function(int id) toggleFavourite,
  }) {
    return toggleFavourite(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SubCategoryDTO? val)? initialEvent,
    TResult? Function(bool isRefresh)? onSearch,
    TResult? Function(String? val)? getSearchText,
    TResult? Function()? getCategoryList,
    TResult? Function()? loadAllFilterList,
    TResult? Function(FilterAttribute attribute, String value)? filterChanged,
    TResult? Function(String value)? categoryChanged,
    TResult? Function()? submitFilter,
    TResult? Function()? clearAllFilters,
    TResult? Function(int id)? toggleFavourite,
  }) {
    return toggleFavourite?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SubCategoryDTO? val)? initialEvent,
    TResult Function(bool isRefresh)? onSearch,
    TResult Function(String? val)? getSearchText,
    TResult Function()? getCategoryList,
    TResult Function()? loadAllFilterList,
    TResult Function(FilterAttribute attribute, String value)? filterChanged,
    TResult Function(String value)? categoryChanged,
    TResult Function()? submitFilter,
    TResult Function()? clearAllFilters,
    TResult Function(int id)? toggleFavourite,
    required TResult orElse(),
  }) {
    if (toggleFavourite != null) {
      return toggleFavourite(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialEvent value) initialEvent,
    required TResult Function(OnSearch value) onSearch,
    required TResult Function(GetSearchText value) getSearchText,
    required TResult Function(GetCategoryList value) getCategoryList,
    required TResult Function(LoadAllFilterList value) loadAllFilterList,
    required TResult Function(FilterChanged value) filterChanged,
    required TResult Function(CategoryChanged value) categoryChanged,
    required TResult Function(SubmitFilter value) submitFilter,
    required TResult Function(ClearAllFilters value) clearAllFilters,
    required TResult Function(ToggleFavourite value) toggleFavourite,
  }) {
    return toggleFavourite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialEvent value)? initialEvent,
    TResult? Function(OnSearch value)? onSearch,
    TResult? Function(GetSearchText value)? getSearchText,
    TResult? Function(GetCategoryList value)? getCategoryList,
    TResult? Function(LoadAllFilterList value)? loadAllFilterList,
    TResult? Function(FilterChanged value)? filterChanged,
    TResult? Function(CategoryChanged value)? categoryChanged,
    TResult? Function(SubmitFilter value)? submitFilter,
    TResult? Function(ClearAllFilters value)? clearAllFilters,
    TResult? Function(ToggleFavourite value)? toggleFavourite,
  }) {
    return toggleFavourite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialEvent value)? initialEvent,
    TResult Function(OnSearch value)? onSearch,
    TResult Function(GetSearchText value)? getSearchText,
    TResult Function(GetCategoryList value)? getCategoryList,
    TResult Function(LoadAllFilterList value)? loadAllFilterList,
    TResult Function(FilterChanged value)? filterChanged,
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(SubmitFilter value)? submitFilter,
    TResult Function(ClearAllFilters value)? clearAllFilters,
    TResult Function(ToggleFavourite value)? toggleFavourite,
    required TResult orElse(),
  }) {
    if (toggleFavourite != null) {
      return toggleFavourite(this);
    }
    return orElse();
  }
}

abstract class ToggleFavourite implements SearchEvent {
  const factory ToggleFavourite(final int id) = _$ToggleFavouriteImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$ToggleFavouriteImplCopyWith<_$ToggleFavouriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  bool get isLoading => throw _privateConstructorUsedError;
  FilterDTO? get filters => throw _privateConstructorUsedError;
  bool get isErrorInAPI => throw _privateConstructorUsedError;
  bool get isNoDataFound => throw _privateConstructorUsedError;
  List<SearchProductDTO> get productList => throw _privateConstructorUsedError;

  /// Filter Options List
  List<FilterOptionListDTO> get categoryList =>
      throw _privateConstructorUsedError;
  List<FilterOptionListDTO> get brandList => throw _privateConstructorUsedError;
  List<FilterOptionListDTO> get dimensionList =>
      throw _privateConstructorUsedError;
  List<FilterOptionListDTO> get iDList => throw _privateConstructorUsedError;
  List<FilterOptionListDTO> get oDList => throw _privateConstructorUsedError;
  List<FilterOptionListDTO> get depthList => throw _privateConstructorUsedError;
  List<FilterOptionListDTO> get anglesList =>
      throw _privateConstructorUsedError;
  bool get isFilterLoading => throw _privateConstructorUsedError;
  bool get isErrorInFilterAPI => throw _privateConstructorUsedError;
  SubCategoryDTO? get selecetedCategory => throw _privateConstructorUsedError;
  List<int> get favouriteIds => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {bool isLoading,
      FilterDTO? filters,
      bool isErrorInAPI,
      bool isNoDataFound,
      List<SearchProductDTO> productList,
      List<FilterOptionListDTO> categoryList,
      List<FilterOptionListDTO> brandList,
      List<FilterOptionListDTO> dimensionList,
      List<FilterOptionListDTO> iDList,
      List<FilterOptionListDTO> oDList,
      List<FilterOptionListDTO> depthList,
      List<FilterOptionListDTO> anglesList,
      bool isFilterLoading,
      bool isErrorInFilterAPI,
      SubCategoryDTO? selecetedCategory,
      List<int> favouriteIds});

  $FilterDTOCopyWith<$Res>? get filters;
  $SubCategoryDTOCopyWith<$Res>? get selecetedCategory;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? filters = freezed,
    Object? isErrorInAPI = null,
    Object? isNoDataFound = null,
    Object? productList = null,
    Object? categoryList = null,
    Object? brandList = null,
    Object? dimensionList = null,
    Object? iDList = null,
    Object? oDList = null,
    Object? depthList = null,
    Object? anglesList = null,
    Object? isFilterLoading = null,
    Object? isErrorInFilterAPI = null,
    Object? selecetedCategory = freezed,
    Object? favouriteIds = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      filters: freezed == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as FilterDTO?,
      isErrorInAPI: null == isErrorInAPI
          ? _value.isErrorInAPI
          : isErrorInAPI // ignore: cast_nullable_to_non_nullable
              as bool,
      isNoDataFound: null == isNoDataFound
          ? _value.isNoDataFound
          : isNoDataFound // ignore: cast_nullable_to_non_nullable
              as bool,
      productList: null == productList
          ? _value.productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<SearchProductDTO>,
      categoryList: null == categoryList
          ? _value.categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<FilterOptionListDTO>,
      brandList: null == brandList
          ? _value.brandList
          : brandList // ignore: cast_nullable_to_non_nullable
              as List<FilterOptionListDTO>,
      dimensionList: null == dimensionList
          ? _value.dimensionList
          : dimensionList // ignore: cast_nullable_to_non_nullable
              as List<FilterOptionListDTO>,
      iDList: null == iDList
          ? _value.iDList
          : iDList // ignore: cast_nullable_to_non_nullable
              as List<FilterOptionListDTO>,
      oDList: null == oDList
          ? _value.oDList
          : oDList // ignore: cast_nullable_to_non_nullable
              as List<FilterOptionListDTO>,
      depthList: null == depthList
          ? _value.depthList
          : depthList // ignore: cast_nullable_to_non_nullable
              as List<FilterOptionListDTO>,
      anglesList: null == anglesList
          ? _value.anglesList
          : anglesList // ignore: cast_nullable_to_non_nullable
              as List<FilterOptionListDTO>,
      isFilterLoading: null == isFilterLoading
          ? _value.isFilterLoading
          : isFilterLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isErrorInFilterAPI: null == isErrorInFilterAPI
          ? _value.isErrorInFilterAPI
          : isErrorInFilterAPI // ignore: cast_nullable_to_non_nullable
              as bool,
      selecetedCategory: freezed == selecetedCategory
          ? _value.selecetedCategory
          : selecetedCategory // ignore: cast_nullable_to_non_nullable
              as SubCategoryDTO?,
      favouriteIds: null == favouriteIds
          ? _value.favouriteIds
          : favouriteIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FilterDTOCopyWith<$Res>? get filters {
    if (_value.filters == null) {
      return null;
    }

    return $FilterDTOCopyWith<$Res>(_value.filters!, (value) {
      return _then(_value.copyWith(filters: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SubCategoryDTOCopyWith<$Res>? get selecetedCategory {
    if (_value.selecetedCategory == null) {
      return null;
    }

    return $SubCategoryDTOCopyWith<$Res>(_value.selecetedCategory!, (value) {
      return _then(_value.copyWith(selecetedCategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchStateImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$SearchStateImplCopyWith(
          _$SearchStateImpl value, $Res Function(_$SearchStateImpl) then) =
      __$$SearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      FilterDTO? filters,
      bool isErrorInAPI,
      bool isNoDataFound,
      List<SearchProductDTO> productList,
      List<FilterOptionListDTO> categoryList,
      List<FilterOptionListDTO> brandList,
      List<FilterOptionListDTO> dimensionList,
      List<FilterOptionListDTO> iDList,
      List<FilterOptionListDTO> oDList,
      List<FilterOptionListDTO> depthList,
      List<FilterOptionListDTO> anglesList,
      bool isFilterLoading,
      bool isErrorInFilterAPI,
      SubCategoryDTO? selecetedCategory,
      List<int> favouriteIds});

  @override
  $FilterDTOCopyWith<$Res>? get filters;
  @override
  $SubCategoryDTOCopyWith<$Res>? get selecetedCategory;
}

/// @nodoc
class __$$SearchStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateImpl>
    implements _$$SearchStateImplCopyWith<$Res> {
  __$$SearchStateImplCopyWithImpl(
      _$SearchStateImpl _value, $Res Function(_$SearchStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? filters = freezed,
    Object? isErrorInAPI = null,
    Object? isNoDataFound = null,
    Object? productList = null,
    Object? categoryList = null,
    Object? brandList = null,
    Object? dimensionList = null,
    Object? iDList = null,
    Object? oDList = null,
    Object? depthList = null,
    Object? anglesList = null,
    Object? isFilterLoading = null,
    Object? isErrorInFilterAPI = null,
    Object? selecetedCategory = freezed,
    Object? favouriteIds = null,
  }) {
    return _then(_$SearchStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      filters: freezed == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as FilterDTO?,
      isErrorInAPI: null == isErrorInAPI
          ? _value.isErrorInAPI
          : isErrorInAPI // ignore: cast_nullable_to_non_nullable
              as bool,
      isNoDataFound: null == isNoDataFound
          ? _value.isNoDataFound
          : isNoDataFound // ignore: cast_nullable_to_non_nullable
              as bool,
      productList: null == productList
          ? _value._productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<SearchProductDTO>,
      categoryList: null == categoryList
          ? _value._categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<FilterOptionListDTO>,
      brandList: null == brandList
          ? _value._brandList
          : brandList // ignore: cast_nullable_to_non_nullable
              as List<FilterOptionListDTO>,
      dimensionList: null == dimensionList
          ? _value._dimensionList
          : dimensionList // ignore: cast_nullable_to_non_nullable
              as List<FilterOptionListDTO>,
      iDList: null == iDList
          ? _value._iDList
          : iDList // ignore: cast_nullable_to_non_nullable
              as List<FilterOptionListDTO>,
      oDList: null == oDList
          ? _value._oDList
          : oDList // ignore: cast_nullable_to_non_nullable
              as List<FilterOptionListDTO>,
      depthList: null == depthList
          ? _value._depthList
          : depthList // ignore: cast_nullable_to_non_nullable
              as List<FilterOptionListDTO>,
      anglesList: null == anglesList
          ? _value._anglesList
          : anglesList // ignore: cast_nullable_to_non_nullable
              as List<FilterOptionListDTO>,
      isFilterLoading: null == isFilterLoading
          ? _value.isFilterLoading
          : isFilterLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isErrorInFilterAPI: null == isErrorInFilterAPI
          ? _value.isErrorInFilterAPI
          : isErrorInFilterAPI // ignore: cast_nullable_to_non_nullable
              as bool,
      selecetedCategory: freezed == selecetedCategory
          ? _value.selecetedCategory
          : selecetedCategory // ignore: cast_nullable_to_non_nullable
              as SubCategoryDTO?,
      favouriteIds: null == favouriteIds
          ? _value._favouriteIds
          : favouriteIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$SearchStateImpl implements _SearchState {
  _$SearchStateImpl(
      {required this.isLoading,
      required this.filters,
      required this.isErrorInAPI,
      required this.isNoDataFound,
      required final List<SearchProductDTO> productList,
      required final List<FilterOptionListDTO> categoryList,
      required final List<FilterOptionListDTO> brandList,
      required final List<FilterOptionListDTO> dimensionList,
      required final List<FilterOptionListDTO> iDList,
      required final List<FilterOptionListDTO> oDList,
      required final List<FilterOptionListDTO> depthList,
      required final List<FilterOptionListDTO> anglesList,
      required this.isFilterLoading,
      required this.isErrorInFilterAPI,
      required this.selecetedCategory,
      required final List<int> favouriteIds})
      : _productList = productList,
        _categoryList = categoryList,
        _brandList = brandList,
        _dimensionList = dimensionList,
        _iDList = iDList,
        _oDList = oDList,
        _depthList = depthList,
        _anglesList = anglesList,
        _favouriteIds = favouriteIds;

  @override
  final bool isLoading;
  @override
  final FilterDTO? filters;
  @override
  final bool isErrorInAPI;
  @override
  final bool isNoDataFound;
  final List<SearchProductDTO> _productList;
  @override
  List<SearchProductDTO> get productList {
    if (_productList is EqualUnmodifiableListView) return _productList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productList);
  }

  /// Filter Options List
  final List<FilterOptionListDTO> _categoryList;

  /// Filter Options List
  @override
  List<FilterOptionListDTO> get categoryList {
    if (_categoryList is EqualUnmodifiableListView) return _categoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryList);
  }

  final List<FilterOptionListDTO> _brandList;
  @override
  List<FilterOptionListDTO> get brandList {
    if (_brandList is EqualUnmodifiableListView) return _brandList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_brandList);
  }

  final List<FilterOptionListDTO> _dimensionList;
  @override
  List<FilterOptionListDTO> get dimensionList {
    if (_dimensionList is EqualUnmodifiableListView) return _dimensionList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dimensionList);
  }

  final List<FilterOptionListDTO> _iDList;
  @override
  List<FilterOptionListDTO> get iDList {
    if (_iDList is EqualUnmodifiableListView) return _iDList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_iDList);
  }

  final List<FilterOptionListDTO> _oDList;
  @override
  List<FilterOptionListDTO> get oDList {
    if (_oDList is EqualUnmodifiableListView) return _oDList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_oDList);
  }

  final List<FilterOptionListDTO> _depthList;
  @override
  List<FilterOptionListDTO> get depthList {
    if (_depthList is EqualUnmodifiableListView) return _depthList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_depthList);
  }

  final List<FilterOptionListDTO> _anglesList;
  @override
  List<FilterOptionListDTO> get anglesList {
    if (_anglesList is EqualUnmodifiableListView) return _anglesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_anglesList);
  }

  @override
  final bool isFilterLoading;
  @override
  final bool isErrorInFilterAPI;
  @override
  final SubCategoryDTO? selecetedCategory;
  final List<int> _favouriteIds;
  @override
  List<int> get favouriteIds {
    if (_favouriteIds is EqualUnmodifiableListView) return _favouriteIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favouriteIds);
  }

  @override
  String toString() {
    return 'SearchState(isLoading: $isLoading, filters: $filters, isErrorInAPI: $isErrorInAPI, isNoDataFound: $isNoDataFound, productList: $productList, categoryList: $categoryList, brandList: $brandList, dimensionList: $dimensionList, iDList: $iDList, oDList: $oDList, depthList: $depthList, anglesList: $anglesList, isFilterLoading: $isFilterLoading, isErrorInFilterAPI: $isErrorInFilterAPI, selecetedCategory: $selecetedCategory, favouriteIds: $favouriteIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.filters, filters) || other.filters == filters) &&
            (identical(other.isErrorInAPI, isErrorInAPI) ||
                other.isErrorInAPI == isErrorInAPI) &&
            (identical(other.isNoDataFound, isNoDataFound) ||
                other.isNoDataFound == isNoDataFound) &&
            const DeepCollectionEquality()
                .equals(other._productList, _productList) &&
            const DeepCollectionEquality()
                .equals(other._categoryList, _categoryList) &&
            const DeepCollectionEquality()
                .equals(other._brandList, _brandList) &&
            const DeepCollectionEquality()
                .equals(other._dimensionList, _dimensionList) &&
            const DeepCollectionEquality().equals(other._iDList, _iDList) &&
            const DeepCollectionEquality().equals(other._oDList, _oDList) &&
            const DeepCollectionEquality()
                .equals(other._depthList, _depthList) &&
            const DeepCollectionEquality()
                .equals(other._anglesList, _anglesList) &&
            (identical(other.isFilterLoading, isFilterLoading) ||
                other.isFilterLoading == isFilterLoading) &&
            (identical(other.isErrorInFilterAPI, isErrorInFilterAPI) ||
                other.isErrorInFilterAPI == isErrorInFilterAPI) &&
            (identical(other.selecetedCategory, selecetedCategory) ||
                other.selecetedCategory == selecetedCategory) &&
            const DeepCollectionEquality()
                .equals(other._favouriteIds, _favouriteIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      filters,
      isErrorInAPI,
      isNoDataFound,
      const DeepCollectionEquality().hash(_productList),
      const DeepCollectionEquality().hash(_categoryList),
      const DeepCollectionEquality().hash(_brandList),
      const DeepCollectionEquality().hash(_dimensionList),
      const DeepCollectionEquality().hash(_iDList),
      const DeepCollectionEquality().hash(_oDList),
      const DeepCollectionEquality().hash(_depthList),
      const DeepCollectionEquality().hash(_anglesList),
      isFilterLoading,
      isErrorInFilterAPI,
      selecetedCategory,
      const DeepCollectionEquality().hash(_favouriteIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      __$$SearchStateImplCopyWithImpl<_$SearchStateImpl>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  factory _SearchState(
      {required final bool isLoading,
      required final FilterDTO? filters,
      required final bool isErrorInAPI,
      required final bool isNoDataFound,
      required final List<SearchProductDTO> productList,
      required final List<FilterOptionListDTO> categoryList,
      required final List<FilterOptionListDTO> brandList,
      required final List<FilterOptionListDTO> dimensionList,
      required final List<FilterOptionListDTO> iDList,
      required final List<FilterOptionListDTO> oDList,
      required final List<FilterOptionListDTO> depthList,
      required final List<FilterOptionListDTO> anglesList,
      required final bool isFilterLoading,
      required final bool isErrorInFilterAPI,
      required final SubCategoryDTO? selecetedCategory,
      required final List<int> favouriteIds}) = _$SearchStateImpl;

  @override
  bool get isLoading;
  @override
  FilterDTO? get filters;
  @override
  bool get isErrorInAPI;
  @override
  bool get isNoDataFound;
  @override
  List<SearchProductDTO> get productList;
  @override

  /// Filter Options List
  List<FilterOptionListDTO> get categoryList;
  @override
  List<FilterOptionListDTO> get brandList;
  @override
  List<FilterOptionListDTO> get dimensionList;
  @override
  List<FilterOptionListDTO> get iDList;
  @override
  List<FilterOptionListDTO> get oDList;
  @override
  List<FilterOptionListDTO> get depthList;
  @override
  List<FilterOptionListDTO> get anglesList;
  @override
  bool get isFilterLoading;
  @override
  bool get isErrorInFilterAPI;
  @override
  SubCategoryDTO? get selecetedCategory;
  @override
  List<int> get favouriteIds;
  @override
  @JsonKey(ignore: true)
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
