import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'product_detail_event.dart';
part 'product_detail_state.dart';
part 'product_detail_bloc.freezed.dart';

@injectable
class ProductDetailBloc extends Bloc<ProductDetailEvent, ProductDetailState> {
  ProductDetailBloc() : super(ProductDetailState.initial()) {
    on<ProductDetailEvent>((event, emit) {
      event.map(
        imageIndexChanged: (e) {
          emit(state.copyWith(currentImageIndex: e.index));
        },
        favoriteChanged: (e) {
          emit(state.copyWith(isFavorite: (state.isFavorite == 0) ? 1 : 0));
        },
      );
    });
  }
}
