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
    required TResult Function(int id) getProductDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? imageIndexChanged,
    TResult? Function()? favoriteChanged,
    TResult? Function(int id)? getProductDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? imageIndexChanged,
    TResult Function()? favoriteChanged,
    TResult Function(int id)? getProductDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageIndexChanged value) imageIndexChanged,
    required TResult Function(FavoriteChanged value) favoriteChanged,
    required TResult Function(GetProductDetail value) getProductDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageIndexChanged value)? imageIndexChanged,
    TResult? Function(FavoriteChanged value)? favoriteChanged,
    TResult? Function(GetProductDetail value)? getProductDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageIndexChanged value)? imageIndexChanged,
    TResult Function(FavoriteChanged value)? favoriteChanged,
    TResult Function(GetProductDetail value)? getProductDetail,
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
    required TResult Function(int id) getProductDetail,
  }) {
    return imageIndexChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? imageIndexChanged,
    TResult? Function()? favoriteChanged,
    TResult? Function(int id)? getProductDetail,
  }) {
    return imageIndexChanged?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? imageIndexChanged,
    TResult Function()? favoriteChanged,
    TResult Function(int id)? getProductDetail,
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
    required TResult Function(GetProductDetail value) getProductDetail,
  }) {
    return imageIndexChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageIndexChanged value)? imageIndexChanged,
    TResult? Function(FavoriteChanged value)? favoriteChanged,
    TResult? Function(GetProductDetail value)? getProductDetail,
  }) {
    return imageIndexChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageIndexChanged value)? imageIndexChanged,
    TResult Function(FavoriteChanged value)? favoriteChanged,
    TResult Function(GetProductDetail value)? getProductDetail,
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
    required TResult Function(int id) getProductDetail,
  }) {
    return favoriteChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? imageIndexChanged,
    TResult? Function()? favoriteChanged,
    TResult? Function(int id)? getProductDetail,
  }) {
    return favoriteChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? imageIndexChanged,
    TResult Function()? favoriteChanged,
    TResult Function(int id)? getProductDetail,
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
    required TResult Function(GetProductDetail value) getProductDetail,
  }) {
    return favoriteChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageIndexChanged value)? imageIndexChanged,
    TResult? Function(FavoriteChanged value)? favoriteChanged,
    TResult? Function(GetProductDetail value)? getProductDetail,
  }) {
    return favoriteChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageIndexChanged value)? imageIndexChanged,
    TResult Function(FavoriteChanged value)? favoriteChanged,
    TResult Function(GetProductDetail value)? getProductDetail,
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
abstract class _$$GetProductDetailImplCopyWith<$Res> {
  factory _$$GetProductDetailImplCopyWith(_$GetProductDetailImpl value,
          $Res Function(_$GetProductDetailImpl) then) =
      __$$GetProductDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$GetProductDetailImplCopyWithImpl<$Res>
    extends _$ProductDetailEventCopyWithImpl<$Res, _$GetProductDetailImpl>
    implements _$$GetProductDetailImplCopyWith<$Res> {
  __$$GetProductDetailImplCopyWithImpl(_$GetProductDetailImpl _value,
      $Res Function(_$GetProductDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetProductDetailImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetProductDetailImpl implements GetProductDetail {
  const _$GetProductDetailImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'ProductDetailEvent.getProductDetail(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductDetailImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductDetailImplCopyWith<_$GetProductDetailImpl> get copyWith =>
      __$$GetProductDetailImplCopyWithImpl<_$GetProductDetailImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) imageIndexChanged,
    required TResult Function() favoriteChanged,
    required TResult Function(int id) getProductDetail,
  }) {
    return getProductDetail(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? imageIndexChanged,
    TResult? Function()? favoriteChanged,
    TResult? Function(int id)? getProductDetail,
  }) {
    return getProductDetail?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? imageIndexChanged,
    TResult Function()? favoriteChanged,
    TResult Function(int id)? getProductDetail,
    required TResult orElse(),
  }) {
    if (getProductDetail != null) {
      return getProductDetail(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageIndexChanged value) imageIndexChanged,
    required TResult Function(FavoriteChanged value) favoriteChanged,
    required TResult Function(GetProductDetail value) getProductDetail,
  }) {
    return getProductDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageIndexChanged value)? imageIndexChanged,
    TResult? Function(FavoriteChanged value)? favoriteChanged,
    TResult? Function(GetProductDetail value)? getProductDetail,
  }) {
    return getProductDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageIndexChanged value)? imageIndexChanged,
    TResult Function(FavoriteChanged value)? favoriteChanged,
    TResult Function(GetProductDetail value)? getProductDetail,
    required TResult orElse(),
  }) {
    if (getProductDetail != null) {
      return getProductDetail(this);
    }
    return orElse();
  }
}

abstract class GetProductDetail implements ProductDetailEvent {
  const factory GetProductDetail(final int id) = _$GetProductDetailImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$GetProductDetailImplCopyWith<_$GetProductDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductDetailState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isErrorInAPI => throw _privateConstructorUsedError;
  int get isFavorite => throw _privateConstructorUsedError;
  int get currentImageIndex => throw _privateConstructorUsedError;
  ProductDetailDTO? get product => throw _privateConstructorUsedError;

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
  $Res call(
      {bool isLoading,
      bool isErrorInAPI,
      int isFavorite,
      int currentImageIndex,
      ProductDetailDTO? product});

  $ProductDetailDTOCopyWith<$Res>? get product;
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
    Object? isLoading = null,
    Object? isErrorInAPI = null,
    Object? isFavorite = null,
    Object? currentImageIndex = null,
    Object? product = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isErrorInAPI: null == isErrorInAPI
          ? _value.isErrorInAPI
          : isErrorInAPI // ignore: cast_nullable_to_non_nullable
              as bool,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as int,
      currentImageIndex: null == currentImageIndex
          ? _value.currentImageIndex
          : currentImageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDetailDTO?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductDetailDTOCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductDetailDTOCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
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
  $Res call(
      {bool isLoading,
      bool isErrorInAPI,
      int isFavorite,
      int currentImageIndex,
      ProductDetailDTO? product});

  @override
  $ProductDetailDTOCopyWith<$Res>? get product;
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
    Object? isLoading = null,
    Object? isErrorInAPI = null,
    Object? isFavorite = null,
    Object? currentImageIndex = null,
    Object? product = freezed,
  }) {
    return _then(_$ProductDetailStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isErrorInAPI: null == isErrorInAPI
          ? _value.isErrorInAPI
          : isErrorInAPI // ignore: cast_nullable_to_non_nullable
              as bool,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as int,
      currentImageIndex: null == currentImageIndex
          ? _value.currentImageIndex
          : currentImageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDetailDTO?,
    ));
  }
}

/// @nodoc

class _$ProductDetailStateImpl implements _ProductDetailState {
  _$ProductDetailStateImpl(
      {required this.isLoading,
      required this.isErrorInAPI,
      required this.isFavorite,
      required this.currentImageIndex,
      required this.product});

  @override
  final bool isLoading;
  @override
  final bool isErrorInAPI;
  @override
  final int isFavorite;
  @override
  final int currentImageIndex;
  @override
  final ProductDetailDTO? product;

  @override
  String toString() {
    return 'ProductDetailState(isLoading: $isLoading, isErrorInAPI: $isErrorInAPI, isFavorite: $isFavorite, currentImageIndex: $currentImageIndex, product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isErrorInAPI, isErrorInAPI) ||
                other.isErrorInAPI == isErrorInAPI) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.currentImageIndex, currentImageIndex) ||
                other.currentImageIndex == currentImageIndex) &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isErrorInAPI,
      isFavorite, currentImageIndex, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailStateImplCopyWith<_$ProductDetailStateImpl> get copyWith =>
      __$$ProductDetailStateImplCopyWithImpl<_$ProductDetailStateImpl>(
          this, _$identity);
}

abstract class _ProductDetailState implements ProductDetailState {
  factory _ProductDetailState(
      {required final bool isLoading,
      required final bool isErrorInAPI,
      required final int isFavorite,
      required final int currentImageIndex,
      required final ProductDetailDTO? product}) = _$ProductDetailStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isErrorInAPI;
  @override
  int get isFavorite;
  @override
  int get currentImageIndex;
  @override
  ProductDetailDTO? get product;
  @override
  @JsonKey(ignore: true)
  _$$ProductDetailStateImplCopyWith<_$ProductDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
