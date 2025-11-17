// ignore_for_file: prefer_const_constructors

import 'package:auto_route/auto_route.dart';
import 'package:aire_velo_bearings/core/router/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashPage.page, initial: true),
    AutoRoute(page: Onboarding.page),
    AutoRoute(page: SignUp.page),
    AutoRoute(page: SignIn.page),
    AutoRoute(page: ForgotPassword.page),
    AutoRoute(
      page: MainTabView.page,
      children: [
        AutoRoute(page: HomeView.page),
        AutoRoute(page: MyAccountView.page),
        AutoRoute(page: FavouritesView.page),
      ],
    ),
    AutoRoute(page: SubCategoryList.page),
    AutoRoute(page: SearchScreen.page),
    AutoRoute(page: ProductDetail.page),
    AutoRoute(page: EditProfile.page),
    AutoRoute(page: ChangePassword.page),
  ];
}
