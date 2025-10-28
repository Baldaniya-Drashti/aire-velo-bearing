part of 'main_tab_bloc.dart';

@freezed
class MainTabState with _$MainTabState {
  factory MainTabState({
    required int selectedTab,
    required int pageIndex,
    required String homePage,
    required String profilePage,
    required String favouritesPage,
    required String newsOffersPage,
  }) = _MainTabState;
  factory MainTabState.initial() => MainTabState(
    selectedTab: 0,
    pageIndex: 0,
    homePage: HomeView.name,
    profilePage: MyAccountView.name,
    favouritesPage: FavouritesView.name,
    newsOffersPage: NewsOffersView.name,
  );
}
