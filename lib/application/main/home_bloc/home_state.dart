part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    required List<HomeDTO> productList,
    required bool isLoading,
    required bool isSubmitting,
    required bool showErrorMessages,
    required bool isNoDataFound,
  }) = _HomeState;
  factory HomeState.initial() => HomeState(
    productList: [],
    showErrorMessages: false,
    isLoading: false,
    isNoDataFound: false,
    isSubmitting: false,
  );
}
