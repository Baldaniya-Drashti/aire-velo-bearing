part of 'main_tab_bloc.dart';

@freezed
class MainTabState with _$MainTabState {
  factory MainTabState({
    required int selectedTab,
    required int pageIndex,
    required String homePage,
    required String myAccountPage,
    required String favouritesPage,
    // required bool authenticated,
  }) = _MainTabState;
  factory MainTabState.initial() => MainTabState(
    selectedTab: 0,
    pageIndex: 0,
    homePage: HomeView.name,
    myAccountPage: MyAccountView.name,
    favouritesPage: FavouritesView.name,
    // authenticated: false,
  );
}
