part of 'product_detail_bloc.dart';

@freezed
class ProductDetailState with _$ProductDetailState {
  factory ProductDetailState({
    required int currentImageIndex,

    required int isFavorite,
  }) = _ProductDetailState;
  factory ProductDetailState.initial() =>
      ProductDetailState(currentImageIndex: 0, isFavorite: 0);
}
