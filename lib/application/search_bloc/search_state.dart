part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  factory SearchState({
    required bool isLoading,
    required bool showError,

    required String searchText,
  }) = _SearchState;
  factory SearchState.initial() =>
      SearchState(showError: false, isLoading: false, searchText: "");
}
