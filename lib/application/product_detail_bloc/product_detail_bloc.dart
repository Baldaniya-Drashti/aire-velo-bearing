import 'package:aire_velo_bearings/application/account_bloc/account_bloc.dart';
import 'package:aire_velo_bearings/core/database/local_preference.dart';
import 'package:aire_velo_bearings/core/router/app_router.dart';
import 'package:aire_velo_bearings/domain/main/i_main_facade.dart';
import 'package:aire_velo_bearings/domain/main/main_failure.dart';
import 'package:aire_velo_bearings/infrastructure/product_detail_dto/product_detail_dto.dart';
import 'package:aire_velo_bearings/injection.dart';
import 'package:aire_velo_bearings/presentation/common/utils/flushbar_creator.dart';
import 'package:aire_velo_bearings/presentation/core/widgets/dialogs/app_dialog.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'product_detail_event.dart';
part 'product_detail_state.dart';
part 'product_detail_bloc.freezed.dart';

@injectable
class ProductDetailBloc extends Bloc<ProductDetailEvent, ProductDetailState> {
  final IMainFacade mainFacade;
  final currentContext = getIt<AppRouter>().navigatorKey.currentContext!;

  ProductDetailBloc(this.mainFacade) : super(ProductDetailState.initial()) {
    on<ProductDetailEvent>((event, emit) async {
      await event.map(
        getProductDetail: (e) async {
          Either<MainFailure, ProductDetailDTO>? failureOrSuccess;
          emit(state.copyWith(isLoading: true));
          final favoriteIds = await getFavouriteIds();
          failureOrSuccess = await mainFacade.getProductDetail(postId: e.id);
          failureOrSuccess.fold(
            (l) {
              showError(
                message: l.maybeMap(
                  showAPIResponseMessage: (value) => value.message,
                  networkError: (value) =>
                      'Please check your internet connectivity',
                  orElse: () => "Server Error. Try again later.",
                ),
              ).show(currentContext);
              emit(
                state.copyWith(
                  isLoading: false,
                  isErrorInAPI: true,
                  product: null,
                ),
              );
            },
            (r) {
              emit(
                state.copyWith(
                  isLoading: false,
                  isErrorInAPI: false,
                  isFavorite: (favoriteIds.contains(r.id ?? 0)) ? 1 : 0,
                  product: r,
                ),
              );
            },
          );
        },
        imageIndexChanged: (e) {
          emit(state.copyWith(currentImageIndex: e.index));
        },
        favoriteChanged: (e) async {
          final bool isLoggedIn = currentContext
              .read<AccountBloc>()
              .state
              .authenticated;
          print("IsLogged In favoriteChanged--> ${isLoggedIn}");
          if (isLoggedIn) {
            await setFavoriteIds(state.product?.id ?? 0);
            emit(state.copyWith(isFavorite: (state.isFavorite == 0) ? 1 : 0));
          } else {
            AppDialog.showInfo(currentContext);
          }
        },
      );
    });
  }
}
