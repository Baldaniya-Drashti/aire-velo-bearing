import 'package:aire_velo_bearings/application/account_bloc/account_bloc.dart';
import 'package:aire_velo_bearings/core/database/local_preference.dart';
import 'package:aire_velo_bearings/core/router/app_router.dart';
import 'package:aire_velo_bearings/domain/main/i_main_facade.dart';
import 'package:aire_velo_bearings/domain/main/main_failure.dart';
import 'package:aire_velo_bearings/domain/validators/validators.dart';
import 'package:aire_velo_bearings/infrastructure/filter_dto/filter_dto.dart';
import 'package:aire_velo_bearings/infrastructure/filter_option_list_dto/filter_option_list_dto.dart';
import 'package:aire_velo_bearings/infrastructure/search_product_dto/search_product_dto.dart';
import 'package:aire_velo_bearings/infrastructure/sub_category_dto/sub_category_dto.dart';
import 'package:aire_velo_bearings/injection.dart';
import 'package:aire_velo_bearings/presentation/common/utils/flushbar_creator.dart';
import 'package:aire_velo_bearings/presentation/core/enum.dart';
import 'package:aire_velo_bearings/presentation/core/widgets/dialogs/app_dialog.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
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
        rangePriceChanged: (e) {
          emit(state.copyWith(range: e.value));
        },
        initialEvent: (e) async {
          if (e.val != null) {
            emit(
              state.copyWith(
                filters: FilterDTO(category: e.val?.slug ?? ''),
                // selecetedCategory: e.val,
                range: RangeValues(
                  e.val?.min_price ?? 0.0,
                  e.val?.max_price ?? 0.0,
                ),
                minPrice: e.val?.min_price ?? 0.0,
                maxPrice: e.val?.max_price ?? 0.0,
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

          emit(state.copyWith(isFilterLoading: true, isErrorInAPI: false));

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
              final defaultValue = FilterOptionListDTO(
                term_id: -1,
                name: "Any Category",
                slug: null,
              );
              final list = [defaultValue, ...r];

              emit(state.copyWith(categoryList: list, isErrorInAPI: false));
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
                emit(
                  _updateStateWithAttribute(
                    state: state,
                    attribute: attribute,
                    data: [],
                  ),
                );
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
              },
            );
          }
          emit(state.copyWith(isFilterLoading: false, isErrorInAPI: false));
        },
        categoryChanged: (e) {
          final intialFilter = state.filters ?? FilterDTO();
          final filters = FilterDTO(
            id: intialFilter.id,
            od: intialFilter.od,
            depth: intialFilter.depth,
            category: e.value.slug ?? '',
          );
          emit(
            state.copyWith(
              filters: filters,
              range: RangeValues(
                e.value.ui_min_price ?? 0.0,
                e.value.ui_max_price ?? 0.0,
              ),
              minPrice: e.value.ui_min_price ?? 0.0,
              maxPrice: e.value.ui_max_price ?? 0.0,
            ),
          );

          add(SearchEvent.loadAllFilterList());
        },
        filterChanged: (e) {
          emit(
            _updateFilterOption(
              attribute: e.attribute,
              value: e.value,
              searchState: state,
            ),
          );
        },
        submitFilter: (e) {
          Navigator.pop(currentContext);
          add(SearchEvent.onSearch(isRefresh: true));
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

            FilterDTO? filter = state.filters;

            if (filter != null && state.range.start != 0) {
              filter = filter.copyWith(min_price: state.range.start.toString());
            }
            if (filter != null && state.range.end != 0) {
              filter = filter.copyWith(max_price: state.range.end.toString());
            }
            var res = await mainFacade.filterAPI(filters: filter, page: page);
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
                    isErrorOnSearch: true,
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
                    isErrorOnSearch: false,
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
          final bool isLoggedIn = currentContext
              .read<AccountBloc>()
              .state
              .authenticated;

          if (isLoggedIn) {
            await setFavoriteIds(e.id);

            final ids = await getFavouriteIds();
            emit(state.copyWith(favouriteIds: ids));
          } else {
            AppDialog.showInfo(currentContext);
          }
        },
        onShortCutSearch: (e) {
          FilterDTO initialFilter = state.filters ?? FilterDTO();

          final isDepthValid = state.depthText.isValid();
          final isIDValid = state.idText.isValid();
          final isODValid = state.odText.isValid();
          initialFilter = initialFilter.copyWith(
            depth: state.depthText.getValue(),
            od: state.odText.getValue(),
            id: state.idText.getValue(),
          );

          emit(state.copyWith(filters: initialFilter));

          if (isDepthValid || isIDValid || isODValid) {
            add(SearchEvent.onSearch(isRefresh: true));
          } else {
            showError(message: "Please add at least one filter");
          }
        },
        depthTextChanged: (e) {
          emit(state.copyWith(depthText: InputEmptyOrNot(e.value)));
        },
        idTextChanged: (e) {
          emit(state.copyWith(idText: InputEmptyOrNot(e.value)));
        },
        odTextChanged: (e) {
          emit(state.copyWith(odText: InputEmptyOrNot(e.value)));
        },
        closeBottomSheet: (e) {
          final initialFilter = FilterDTO(
            depth: state.filters?.depth,
            id: state.filters?.id,
            od: state.filters?.od,
          );
          emit(
            state.copyWith(
              filters: initialFilter,
              range: RangeValues(0, 0),
              minPrice: null,
              maxPrice: null,
            ),
          );

          Navigator.pop(currentContext);
          add(SearchEvent.onSearch(isRefresh: true));
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
    // If API returns empty → return EMPTY LIST
    if (data.isEmpty) {
      switch (attribute) {
        case FilterAttribute.brand:
          return state.copyWith(brandList: []);
        case FilterAttribute.chamfersAngles:
          return state.copyWith(anglesList: []);
        case FilterAttribute.id:
          return state.copyWith(iDList: []);
        case FilterAttribute.od:
          return state.copyWith(oDList: []);
        case FilterAttribute.depth:
          return state.copyWith(depthList: []);
        case FilterAttribute.dimension:
          return state.copyWith(dimensionList: []);
      }
    }
    List<FilterOptionListDTO> updatedList;

    switch (attribute) {
      case FilterAttribute.brand:
        updatedList = [defaultOption("Brand"), ...data];
        return state.copyWith(brandList: updatedList);

      case FilterAttribute.chamfersAngles:
        updatedList = [defaultOption("Chamfer Angles"), ...data];
        return state.copyWith(anglesList: updatedList);

      case FilterAttribute.id:
        updatedList = [defaultOption("Inner Diameter"), ...data];
        return state.copyWith(iDList: updatedList);

      case FilterAttribute.od:
        updatedList = [defaultOption("Outer Diameter"), ...data];
        return state.copyWith(oDList: updatedList);

      case FilterAttribute.depth:
        updatedList = [defaultOption("Depth"), ...data];
        return state.copyWith(depthList: updatedList);

      case FilterAttribute.dimension:
        updatedList = [defaultOption("Dimensions"), ...data];
        return state.copyWith(dimensionList: updatedList);
    }
  }
}
