part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.onSearch({required String query}) = OnSearch;

  const factory SearchEvent.getSearchText({required String? val}) =
      GetSearchText;
}
