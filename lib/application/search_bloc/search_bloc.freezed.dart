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
    required TResult Function(String query) onSearch,
    required TResult Function(String? val) getSearchText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? onSearch,
    TResult? Function(String? val)? getSearchText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? onSearch,
    TResult Function(String? val)? getSearchText,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnSearch value) onSearch,
    required TResult Function(GetSearchText value) getSearchText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnSearch value)? onSearch,
    TResult? Function(GetSearchText value)? getSearchText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnSearch value)? onSearch,
    TResult Function(GetSearchText value)? getSearchText,
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
abstract class _$$OnSearchImplCopyWith<$Res> {
  factory _$$OnSearchImplCopyWith(
          _$OnSearchImpl value, $Res Function(_$OnSearchImpl) then) =
      __$$OnSearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
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
    Object? query = null,
  }) {
    return _then(_$OnSearchImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnSearchImpl implements OnSearch {
  const _$OnSearchImpl({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'SearchEvent.onSearch(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSearchImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSearchImplCopyWith<_$OnSearchImpl> get copyWith =>
      __$$OnSearchImplCopyWithImpl<_$OnSearchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) onSearch,
    required TResult Function(String? val) getSearchText,
  }) {
    return onSearch(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? onSearch,
    TResult? Function(String? val)? getSearchText,
  }) {
    return onSearch?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? onSearch,
    TResult Function(String? val)? getSearchText,
    required TResult orElse(),
  }) {
    if (onSearch != null) {
      return onSearch(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnSearch value) onSearch,
    required TResult Function(GetSearchText value) getSearchText,
  }) {
    return onSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnSearch value)? onSearch,
    TResult? Function(GetSearchText value)? getSearchText,
  }) {
    return onSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnSearch value)? onSearch,
    TResult Function(GetSearchText value)? getSearchText,
    required TResult orElse(),
  }) {
    if (onSearch != null) {
      return onSearch(this);
    }
    return orElse();
  }
}

abstract class OnSearch implements SearchEvent {
  const factory OnSearch({required final String query}) = _$OnSearchImpl;

  String get query;
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
    required TResult Function(String query) onSearch,
    required TResult Function(String? val) getSearchText,
  }) {
    return getSearchText(val);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? onSearch,
    TResult? Function(String? val)? getSearchText,
  }) {
    return getSearchText?.call(val);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? onSearch,
    TResult Function(String? val)? getSearchText,
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
    required TResult Function(OnSearch value) onSearch,
    required TResult Function(GetSearchText value) getSearchText,
  }) {
    return getSearchText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnSearch value)? onSearch,
    TResult? Function(GetSearchText value)? getSearchText,
  }) {
    return getSearchText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnSearch value)? onSearch,
    TResult Function(GetSearchText value)? getSearchText,
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
mixin _$SearchState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;
  String get searchText => throw _privateConstructorUsedError;

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
  $Res call({bool isLoading, bool showError, String searchText});
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
    Object? showError = null,
    Object? searchText = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
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
  $Res call({bool isLoading, bool showError, String searchText});
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
    Object? showError = null,
    Object? searchText = null,
  }) {
    return _then(_$SearchStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchStateImpl implements _SearchState {
  _$SearchStateImpl(
      {required this.isLoading,
      required this.showError,
      required this.searchText});

  @override
  final bool isLoading;
  @override
  final bool showError;
  @override
  final String searchText;

  @override
  String toString() {
    return 'SearchState(isLoading: $isLoading, showError: $showError, searchText: $searchText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.showError, showError) ||
                other.showError == showError) &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, showError, searchText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      __$$SearchStateImplCopyWithImpl<_$SearchStateImpl>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  factory _SearchState(
      {required final bool isLoading,
      required final bool showError,
      required final String searchText}) = _$SearchStateImpl;

  @override
  bool get isLoading;
  @override
  bool get showError;
  @override
  String get searchText;
  @override
  @JsonKey(ignore: true)
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
