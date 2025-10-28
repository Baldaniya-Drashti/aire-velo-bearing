// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) imageIndexChanged,
    required TResult Function() favoriteChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? imageIndexChanged,
    TResult? Function()? favoriteChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? imageIndexChanged,
    TResult Function()? favoriteChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageIndexChanged value) imageIndexChanged,
    required TResult Function(FavoriteChanged value) favoriteChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageIndexChanged value)? imageIndexChanged,
    TResult? Function(FavoriteChanged value)? favoriteChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageIndexChanged value)? imageIndexChanged,
    TResult Function(FavoriteChanged value)? favoriteChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailEventCopyWith<$Res> {
  factory $ProductDetailEventCopyWith(
          ProductDetailEvent value, $Res Function(ProductDetailEvent) then) =
      _$ProductDetailEventCopyWithImpl<$Res, ProductDetailEvent>;
}

/// @nodoc
class _$ProductDetailEventCopyWithImpl<$Res, $Val extends ProductDetailEvent>
    implements $ProductDetailEventCopyWith<$Res> {
  _$ProductDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ImageIndexChangedImplCopyWith<$Res> {
  factory _$$ImageIndexChangedImplCopyWith(_$ImageIndexChangedImpl value,
          $Res Function(_$ImageIndexChangedImpl) then) =
      __$$ImageIndexChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ImageIndexChangedImplCopyWithImpl<$Res>
    extends _$ProductDetailEventCopyWithImpl<$Res, _$ImageIndexChangedImpl>
    implements _$$ImageIndexChangedImplCopyWith<$Res> {
  __$$ImageIndexChangedImplCopyWithImpl(_$ImageIndexChangedImpl _value,
      $Res Function(_$ImageIndexChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$ImageIndexChangedImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ImageIndexChangedImpl implements ImageIndexChanged {
  const _$ImageIndexChangedImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'ProductDetailEvent.imageIndexChanged(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageIndexChangedImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageIndexChangedImplCopyWith<_$ImageIndexChangedImpl> get copyWith =>
      __$$ImageIndexChangedImplCopyWithImpl<_$ImageIndexChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) imageIndexChanged,
    required TResult Function() favoriteChanged,
  }) {
    return imageIndexChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? imageIndexChanged,
    TResult? Function()? favoriteChanged,
  }) {
    return imageIndexChanged?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? imageIndexChanged,
    TResult Function()? favoriteChanged,
    required TResult orElse(),
  }) {
    if (imageIndexChanged != null) {
      return imageIndexChanged(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageIndexChanged value) imageIndexChanged,
    required TResult Function(FavoriteChanged value) favoriteChanged,
  }) {
    return imageIndexChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageIndexChanged value)? imageIndexChanged,
    TResult? Function(FavoriteChanged value)? favoriteChanged,
  }) {
    return imageIndexChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageIndexChanged value)? imageIndexChanged,
    TResult Function(FavoriteChanged value)? favoriteChanged,
    required TResult orElse(),
  }) {
    if (imageIndexChanged != null) {
      return imageIndexChanged(this);
    }
    return orElse();
  }
}

abstract class ImageIndexChanged implements ProductDetailEvent {
  const factory ImageIndexChanged(final int index) = _$ImageIndexChangedImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$ImageIndexChangedImplCopyWith<_$ImageIndexChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FavoriteChangedImplCopyWith<$Res> {
  factory _$$FavoriteChangedImplCopyWith(_$FavoriteChangedImpl value,
          $Res Function(_$FavoriteChangedImpl) then) =
      __$$FavoriteChangedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavoriteChangedImplCopyWithImpl<$Res>
    extends _$ProductDetailEventCopyWithImpl<$Res, _$FavoriteChangedImpl>
    implements _$$FavoriteChangedImplCopyWith<$Res> {
  __$$FavoriteChangedImplCopyWithImpl(
      _$FavoriteChangedImpl _value, $Res Function(_$FavoriteChangedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FavoriteChangedImpl implements FavoriteChanged {
  const _$FavoriteChangedImpl();

  @override
  String toString() {
    return 'ProductDetailEvent.favoriteChanged()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FavoriteChangedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) imageIndexChanged,
    required TResult Function() favoriteChanged,
  }) {
    return favoriteChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? imageIndexChanged,
    TResult? Function()? favoriteChanged,
  }) {
    return favoriteChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? imageIndexChanged,
    TResult Function()? favoriteChanged,
    required TResult orElse(),
  }) {
    if (favoriteChanged != null) {
      return favoriteChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageIndexChanged value) imageIndexChanged,
    required TResult Function(FavoriteChanged value) favoriteChanged,
  }) {
    return favoriteChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageIndexChanged value)? imageIndexChanged,
    TResult? Function(FavoriteChanged value)? favoriteChanged,
  }) {
    return favoriteChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageIndexChanged value)? imageIndexChanged,
    TResult Function(FavoriteChanged value)? favoriteChanged,
    required TResult orElse(),
  }) {
    if (favoriteChanged != null) {
      return favoriteChanged(this);
    }
    return orElse();
  }
}

abstract class FavoriteChanged implements ProductDetailEvent {
  const factory FavoriteChanged() = _$FavoriteChangedImpl;
}

/// @nodoc
mixin _$ProductDetailState {
  int get currentImageIndex => throw _privateConstructorUsedError;
  int get isFavorite => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductDetailStateCopyWith<ProductDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailStateCopyWith<$Res> {
  factory $ProductDetailStateCopyWith(
          ProductDetailState value, $Res Function(ProductDetailState) then) =
      _$ProductDetailStateCopyWithImpl<$Res, ProductDetailState>;
  @useResult
  $Res call({int currentImageIndex, int isFavorite});
}

/// @nodoc
class _$ProductDetailStateCopyWithImpl<$Res, $Val extends ProductDetailState>
    implements $ProductDetailStateCopyWith<$Res> {
  _$ProductDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentImageIndex = null,
    Object? isFavorite = null,
  }) {
    return _then(_value.copyWith(
      currentImageIndex: null == currentImageIndex
          ? _value.currentImageIndex
          : currentImageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductDetailStateImplCopyWith<$Res>
    implements $ProductDetailStateCopyWith<$Res> {
  factory _$$ProductDetailStateImplCopyWith(_$ProductDetailStateImpl value,
          $Res Function(_$ProductDetailStateImpl) then) =
      __$$ProductDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentImageIndex, int isFavorite});
}

/// @nodoc
class __$$ProductDetailStateImplCopyWithImpl<$Res>
    extends _$ProductDetailStateCopyWithImpl<$Res, _$ProductDetailStateImpl>
    implements _$$ProductDetailStateImplCopyWith<$Res> {
  __$$ProductDetailStateImplCopyWithImpl(_$ProductDetailStateImpl _value,
      $Res Function(_$ProductDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentImageIndex = null,
    Object? isFavorite = null,
  }) {
    return _then(_$ProductDetailStateImpl(
      currentImageIndex: null == currentImageIndex
          ? _value.currentImageIndex
          : currentImageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ProductDetailStateImpl implements _ProductDetailState {
  _$ProductDetailStateImpl(
      {required this.currentImageIndex, required this.isFavorite});

  @override
  final int currentImageIndex;
  @override
  final int isFavorite;

  @override
  String toString() {
    return 'ProductDetailState(currentImageIndex: $currentImageIndex, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailStateImpl &&
            (identical(other.currentImageIndex, currentImageIndex) ||
                other.currentImageIndex == currentImageIndex) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentImageIndex, isFavorite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailStateImplCopyWith<_$ProductDetailStateImpl> get copyWith =>
      __$$ProductDetailStateImplCopyWithImpl<_$ProductDetailStateImpl>(
          this, _$identity);
}

abstract class _ProductDetailState implements ProductDetailState {
  factory _ProductDetailState(
      {required final int currentImageIndex,
      required final int isFavorite}) = _$ProductDetailStateImpl;

  @override
  int get currentImageIndex;
  @override
  int get isFavorite;
  @override
  @JsonKey(ignore: true)
  _$$ProductDetailStateImplCopyWith<_$ProductDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
