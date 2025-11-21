import 'package:aire_velo_bearings/core/router/app_router.dart';
import 'package:aire_velo_bearings/domain/main/i_main_facade.dart';
import 'package:aire_velo_bearings/infrastructure/sub_category_dto/sub_category_dto.dart';
import 'package:aire_velo_bearings/injection.dart';
import 'package:aire_velo_bearings/presentation/common/utils/flushbar_creator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

part 'category_event.dart';
part 'category_state.dart';
part 'category_bloc.freezed.dart';

@injectable
class SubCategoryBloc extends Bloc<SubCategoryEvent, SubCategoryState> {
  final IMainFacade mainFacade;
  int page = 1;
  int lastPage = 1;
  final RefreshController refreshController = RefreshController();

  final currentContext = getIt<AppRouter>().navigatorKey.currentContext!;
  SubCategoryBloc(this.mainFacade) : super(SubCategoryState.initial()) {
    on<SubCategoryEvent>((event, emit) async {
      await event.map(
        getSubCategoryList: (e) async {
          try {
            if (e.isRefresh) {
              page = 1;
              emit(state.copyWith(subCategoryList: [], isLoading: e.isRefresh));
              refreshController.resetNoData();
            } else {
              if (page > lastPage) {
                refreshController.loadNoData();
                return;
              }
            }
            var res = await mainFacade.subCategoryListAPI(
              productId: e.id,
              page: page,
            );
            page++;
            res.fold(
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
                    subCategoryList: [],
                  ),
                );
              },
              (r) {
                lastPage = r.meta?.lastPage ?? 1;

                if (e.isRefresh) {
                  List.from(state.subCategoryList).clear();
                }
                return emit(
                  state.copyWith(
                    isLoading: false,
                    isErrorInAPI: false,
                    isNoDataFound: (r.data as List<dynamic>)
                        .map((e) => SubCategoryDTO.fromJson(e))
                        .toList()
                        .isEmpty,
                    subCategoryList: List.from(state.subCategoryList)
                      ..addAll(
                        (r.data as List<dynamic>)
                            .map((e) => SubCategoryDTO.fromJson(e))
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
      );
    });
  }
}
