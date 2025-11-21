part of 'product_detail_bloc.dart';

@freezed
class ProductDetailState with _$ProductDetailState {
  factory ProductDetailState({
    required bool isLoading,
    required bool isErrorInAPI,
    required int isFavorite,
    required int currentImageIndex,
    required ProductDetailDTO? product,
  }) = _ProductDetailState;
  factory ProductDetailState.initial() => ProductDetailState(
    isLoading: false,
    isErrorInAPI: false,
    isFavorite: 0,
    currentImageIndex: 0,
    product: null,
  );
}
