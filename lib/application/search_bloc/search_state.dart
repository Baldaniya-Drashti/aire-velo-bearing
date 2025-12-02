part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  factory SearchState({
    required bool isLoading,
    required FilterDTO? filters,

    required bool isErrorOnSearch,

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
    required bool isErrorInAPI,
    required bool isErrorInFilterAPI,
    // required SubCategoryDTO? selecetedCategory,
    required List<int> favouriteIds,
    required RangeValues range,
    required double? minPrice,
    required double? maxPrice,
    required InputEmptyOrNot idText,
    required InputEmptyOrNot odText,
    required InputEmptyOrNot depthText,

    // required String searchText,
  }) = _SearchState;
  factory SearchState.initial() => SearchState(
    isErrorInAPI: false,
    isErrorOnSearch: false,
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
    // selecetedCategory: null,
    favouriteIds: [],
    range: RangeValues(0.0, 0.0),
    minPrice: null,
    maxPrice: null,
    depthText: InputEmptyOrNot(""),
    odText: InputEmptyOrNot(""),
    idText: InputEmptyOrNot(""),
  );
}
