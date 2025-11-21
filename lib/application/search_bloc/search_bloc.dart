import 'package:aire_velo_bearings/core/database/local_preference.dart';
import 'package:aire_velo_bearings/core/router/app_router.dart';
import 'package:aire_velo_bearings/domain/main/i_main_facade.dart';
import 'package:aire_velo_bearings/domain/main/main_failure.dart';
import 'package:aire_velo_bearings/infrastructure/filter_dto/filter_dto.dart';
import 'package:aire_velo_bearings/infrastructure/filter_option_list_dto/filter_option_list_dto.dart';
import 'package:aire_velo_bearings/infrastructure/search_product_dto/search_product_dto.dart';
import 'package:aire_velo_bearings/infrastructure/sub_category_dto/sub_category_dto.dart';
import 'package:aire_velo_bearings/injection.dart';
import 'package:aire_velo_bearings/presentation/common/utils/flushbar_creator.dart';
import 'package:aire_velo_bearings/presentation/core/enum.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IMainFacade mainFacade;
  int page = 1;
  int lastPage = 1;
  final RefreshController refreshController = RefreshController();
  final currentContext = getIt<AppRouter>().navigatorKey.currentContext!;

  SearchBloc(this.mainFacade) : super(SearchState.initial()) {
    on<SearchEvent>((event, emit) async {
      await event.map(
        initialEvent: (e) async {
          if (e.val != null) {
            emit(
              state.copyWith(
                filters: FilterDTO(category: e.val?.slug ?? ''),
                selecetedCategory: e.val,
              ),
            );
          }
          final ids = await getFavouriteIds();
          emit(state.copyWith(favouriteIds: ids));
          add(SearchEvent.onSearch(isRefresh: true));
        },
        getSearchText: (e) async {
          final initialFilters = state.filters ?? FilterDTO();
          if (e.val != null) {
            emit(
              state.copyWith(filters: initialFilters.copyWith(search: e.val!)),
            );
          }
          add(SearchEvent.onSearch(isRefresh: true));
        },
        getCategoryList: (e) async {
          Either<MainFailure, List<FilterOptionListDTO>>? failureOrSuccess;

          emit(state.copyWith(isErrorInAPI: false));

          failureOrSuccess = await mainFacade.getFilterCategoryList();
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
              emit(state.copyWith(isFilterLoading: false, isErrorInAPI: true));
            },
            (r) {
              emit(state.copyWith(categoryList: r, isErrorInAPI: false));
            },
          );
        },
        loadAllFilterList: (e) async {
          Either<MainFailure, List<FilterOptionListDTO>>? failureOrSuccess;
          emit(
            state.copyWith(
              isFilterLoading: true,
              isErrorInAPI: false,
              brandList: [],
              anglesList: [],
              depthList: [],
              dimensionList: [],
              iDList: [],
              oDList: [],
            ),
          );
          for (final attribute in filterAttributes) {
            failureOrSuccess = await mainFacade.getFilterOptionList(
              category: (state.filters != null)
                  ? state.filters?.category
                  : null,
              attribute: attributeToString(attribute),
            );
            failureOrSuccess.fold(
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
                  state.copyWith(isFilterLoading: false, isErrorInAPI: true),
                );
              },
              (r) {
                emit(
                  _updateStateWithAttribute(
                    state: state,
                    attribute: attribute,
                    data: r,
                  ),
                );
                print("StateDepth List---> ${state.depthList}");
              },
            );
          }
          emit(state.copyWith(isFilterLoading: false, isErrorInAPI: false));
        },
        categoryChanged: (e) {
          final initialFilters = state.filters ?? FilterDTO();

          emit(
            state.copyWith(filters: initialFilters.copyWith(category: e.value)),
          );

          add(SearchEvent.loadAllFilterList());
        },
        filterChanged: (e) {
          print("e.attribute---> ${e.attribute}");

          emit(
            _updateFilterOption(
              attribute: e.attribute,
              value: e.value,
              searchState: state,
            ),
          );
        },

        submitFilter: (e) {
          currentContext.router.maybePop();
          add(SearchEvent.onSearch(isRefresh: true));
          print("Selected Filters---> ${state.filters}");
        },
        onSearch: (e) async {
          try {
            if (e.isRefresh) {
              page = 1;
              emit(state.copyWith(productList: [], isLoading: e.isRefresh));
              refreshController.resetNoData();
            } else {
              if (page > lastPage) {
                refreshController.loadNoData();
                return;
              }
            }
            var res = await mainFacade.filterAPI(
              filters: state.filters,
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
                    productList: [],
                  ),
                );
              },
              (r) {
                lastPage = r.meta?.lastPage ?? 1;

                if (e.isRefresh) {
                  List.from(state.productList).clear();
                }
                return emit(
                  state.copyWith(
                    isLoading: false,
                    isErrorInAPI: false,
                    isNoDataFound: (r.data as List<dynamic>)
                        .map((e) => SearchProductDTO.fromJson(e))
                        .toList()
                        .isEmpty,
                    productList: List.from(state.productList)
                      ..addAll(
                        (r.data as List<dynamic>)
                            .map((e) => SearchProductDTO.fromJson(e))
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
        clearAllFilters: (e) {
          final category = state.filters?.category;
          emit(state.copyWith(filters: FilterDTO(category: category)));
        },

        toggleFavourite: (e) async {
          await setFavoriteIds(e.id);

          final ids = await getFavouriteIds();
          emit(state.copyWith(favouriteIds: ids));
        },
      );
    });
  }

  FilterOptionListDTO defaultOption(String title) {
    return FilterOptionListDTO(term_id: -1, name: "Any $title", slug: null);
  }

  SearchState _updateFilterOption({
    required SearchState searchState,
    required FilterAttribute attribute,
    required String value,
  }) {
    final initialFilters = searchState.filters ?? FilterDTO();

    switch (attribute) {
      case FilterAttribute.brand:
        return searchState.copyWith(
          filters: initialFilters.copyWith(filter_brand: value),
        );
      case FilterAttribute.chamfersAngles:
        return searchState.copyWith(
          filters: initialFilters.copyWith(filter_chamfers_angles: value),
        );

      case FilterAttribute.id:
        return searchState.copyWith(
          filters: initialFilters.copyWith(filter_id: value),
        );
      case FilterAttribute.od:
        return searchState.copyWith(
          filters: initialFilters.copyWith(filter_od: value),
        );
      case FilterAttribute.depth:
        return searchState.copyWith(
          filters: initialFilters.copyWith(filter_depth: value),
        );
      case FilterAttribute.dimension:
        return searchState.copyWith(
          filters: initialFilters.copyWith(filter_dimensions: value),
        );
    }
  }

  SearchState _updateStateWithAttribute({
    required SearchState state,
    required FilterAttribute attribute,
    required List<FilterOptionListDTO> data,
  }) {
    switch (attribute) {
      case FilterAttribute.brand:
        return state.copyWith(brandList: data);

      case FilterAttribute.chamfersAngles:
        return state.copyWith(anglesList: data);

      case FilterAttribute.id:
        return state.copyWith(iDList: data);

      case FilterAttribute.od:
        return state.copyWith(oDList: data);

      case FilterAttribute.depth:
        return state.copyWith(depthList: data);

      case FilterAttribute.dimension:
        return state.copyWith(dimensionList: data);
    }
  }
}
