part of 'category_bloc.dart';

@freezed
class SubCategoryEvent with _$SubCategoryEvent {
  const factory SubCategoryEvent.getSubCategoryList({
    @Default(0) int id,
    @Default(true) bool isRefresh,
  }) = GetSubCategoryList;
}
