import 'package:aire_velo_bearings/core/database/local_preference.dart';
import 'package:aire_velo_bearings/core/router/app_router.dart';
import 'package:aire_velo_bearings/domain/main/i_main_facade.dart';
import 'package:aire_velo_bearings/domain/main/main_failure.dart';
import 'package:aire_velo_bearings/infrastructure/common_response/common_response.dart';
import 'package:aire_velo_bearings/infrastructure/favorites_dto/favorites_dto.dart';
import 'package:aire_velo_bearings/infrastructure/filter_option_list_dto/filter_option_list_dto.dart';
import 'package:aire_velo_bearings/injection.dart';
import 'package:aire_velo_bearings/presentation/common/utils/flushbar_creator.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

part 'favorites_event.dart';
part 'favorites_state.dart';
part 'favorites_bloc.freezed.dart';

@injectable
class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  final IMainFacade mainFacade;
  int page = 1;
  int lastPage = 1;
  final RefreshController refreshController = RefreshController();

  final currentContext = getIt<AppRouter>().navigatorKey.currentContext!;
  FavoritesBloc(this.mainFacade) : super(FavoritesState.initial()) {
    on<FavoritesEvent>((event, emit) async {
      await event.map(
        getFavoritesList: (e) async {
          try {
            final ids = await getFavouriteIds();
            emit(state.copyWith(favouriteIds: ids));
            if (e.isRefresh) {
              page = 1;
              emit(state.copyWith(favouriteList: [], isLoading: e.isRefresh));
              refreshController.resetNoData();
            } else {
              if (page > lastPage) {
                refreshController.loadNoData();
                return;
              }
            }
            var res = await mainFacade.getFavoritesList(page: page);
            page++;
            res.fold(
              (l) {
                /* showError(
                  message: l.maybeMap(
                    showAPIResponseMessage: (value) => value.message,
                    networkError: (value) =>
                        'Please check your internet connectivity',
                    orElse: () => "Server Error. Try again later.",
                  ),
                ).show(currentContext); */
                emit(
                  state.copyWith(
                    isLoading: false,
                    showError: true,
                    favouriteList: [],
                  ),
                );
              },
              (r) {
                lastPage = r.meta?.lastPage ?? 1;

                if (e.isRefresh) {
                  List.from(state.favouriteList).clear();
                }
                return emit(
                  state.copyWith(
                    isLoading: false,
                    showError: false,
                    isNoDataFound: (r.data as List<dynamic>)
                        .map((e) => FavoritesDTO.fromJson(e))
                        .toList()
                        .isEmpty,
                    favouriteList: List.from(state.favouriteList)
                      ..addAll(
                        (r.data as List<dynamic>)
                            .map((e) => FavoritesDTO.fromJson(e))
                            .toList(),
                      ),
                  ),
                );
              },
            );
          } catch (err) {
            print("CATCH Listing issue---> $err");
          }
        },
        toggleFavourite: (e) async {
          await setFavoriteIds(e.id);

          final ids = await getFavouriteIds();
          emit(state.copyWith(favouriteIds: ids));
        },
      );
    });
  }
}
