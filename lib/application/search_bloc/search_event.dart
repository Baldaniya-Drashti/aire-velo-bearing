part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.initialEvent({required SubCategoryDTO? val}) =
      InitialEvent;
  const factory SearchEvent.onSearch({required bool isRefresh}) = OnSearch;
  const factory SearchEvent.onShortCutSearch() = OnShortCutSearch;

  const factory SearchEvent.getSearchText({required String? val}) =
      GetSearchText;
  const factory SearchEvent.getCategoryList() = GetCategoryList;
  const factory SearchEvent.loadAllFilterList() = LoadAllFilterList;
  const factory SearchEvent.filterChanged({
    required FilterAttribute attribute,
    required String value,
  }) = FilterChanged;
  const factory SearchEvent.categoryChanged({
    required FilterOptionListDTO value,
  }) = CategoryChanged;
  const factory SearchEvent.submitFilter() = SubmitFilter;
  const factory SearchEvent.clearAllFilters() = ClearAllFilters;
  const factory SearchEvent.toggleFavourite(int id) = ToggleFavourite;
  const factory SearchEvent.rangePriceChanged(RangeValues value) =
      RangePriceChanged;

  const factory SearchEvent.idTextChanged({required String value}) =
      IdTextChanged;
  const factory SearchEvent.odTextChanged({required String value}) =
      OdTextChanged;
  const factory SearchEvent.depthTextChanged({required String value}) =
      DepthTextChanged;
}
