part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  factory SearchState({
    required bool isLoading,
    required FilterDTO? filters,
    required bool isErrorInAPI,
    required bool isNoDataFound,
    required List<SearchProductDTO> productList,

    /// Filter Options List
    required List<FilterOptionListDTO> categoryList,
    required List<FilterOptionListDTO> brandList,
    required List<FilterOptionListDTO> dimensionList,
    required List<FilterOptionListDTO> iDList,
    required List<FilterOptionListDTO> oDList,
    required List<FilterOptionListDTO> depthList,
    required List<FilterOptionListDTO> anglesList,
    required bool isFilterLoading,
    required bool isErrorInFilterAPI,
    required SubCategoryDTO? selecetedCategory,
    required List<int> favouriteIds,

    // required String searchText,
  }) = _SearchState;
  factory SearchState.initial() => SearchState(
    isErrorInAPI: false,
    isLoading: false,
    isNoDataFound: false,
    // searchText: "",
    filters: null,
    productList: [],
    categoryList: [],
    brandList: [],
    dimensionList: [],
    iDList: [],
    oDList: [],
    depthList: [],
    anglesList: [],
    isErrorInFilterAPI: false,
    isFilterLoading: false,
    selecetedCategory: null,
    favouriteIds: [],
  );
}
