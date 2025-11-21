part of 'category_bloc.dart';

@freezed
class SubCategoryState with _$SubCategoryState {
  factory SubCategoryState({
    required List<SubCategoryDTO> subCategoryList,
    required bool isLoading,
    required bool isSubmitting,
    required bool isErrorInAPI,
    required bool isNoDataFound,
  }) = _SubCategoryState;
  factory SubCategoryState.initial() => SubCategoryState(
    subCategoryList: [],
    isErrorInAPI: false,
    isLoading: false,
    isNoDataFound: false,
    isSubmitting: false,
  );
}
