part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.initialEvent({required SubCategoryDTO? val}) =
      InitialEvent;
  const factory SearchEvent.onSearch({required bool isRefresh}) = OnSearch;

  const factory SearchEvent.getSearchText({required String? val}) =
      GetSearchText;
  const factory SearchEvent.getCategoryList() = GetCategoryList;
  const factory SearchEvent.loadAllFilterList() = LoadAllFilterList;
  const factory SearchEvent.filterChanged({
    required FilterAttribute attribute,
    required String value,
  }) = FilterChanged;
  const factory SearchEvent.categoryChanged({required String value}) =
      CategoryChanged;
  const factory SearchEvent.submitFilter() = SubmitFilter;
  const factory SearchEvent.clearAllFilters() = ClearAllFilters;
  const factory SearchEvent.toggleFavourite(int id) = ToggleFavourite;
}
