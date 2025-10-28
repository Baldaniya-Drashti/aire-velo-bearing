part of 'product_detail_bloc.dart';

@freezed
class ProductDetailEvent with _$ProductDetailEvent {
  const factory ProductDetailEvent.imageIndexChanged(int index) =
      ImageIndexChanged;
  const factory ProductDetailEvent.favoriteChanged() = FavoriteChanged;
}
