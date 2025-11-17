// ignore_for_file: prefer_const_constructors

import 'package:aire_velo_bearings/application/main/home_bloc/home_bloc.dart';
import 'package:aire_velo_bearings/core/constants/string_constant.dart';
import 'package:aire_velo_bearings/presentation/main/tabs/favourites/favourites.dart';
import 'package:aire_velo_bearings/presentation/main/tabs/my_account/my_account.dart';
import 'package:auto_route/auto_route.dart';
import 'package:aire_velo_bearings/application/main/main_tab/main_tab_bloc.dart';
import 'package:aire_velo_bearings/injection.dart';
import 'package:aire_velo_bearings/presentation/common/utils/app_focus.dart';
import 'package:aire_velo_bearings/presentation/core/widgets/inputs/custom_app_bar.dart';
import 'package:aire_velo_bearings/presentation/main/tabs/home/home_view.dart';
import 'package:aire_velo_bearings/presentation/main/widgets/custom_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:aire_velo_bearings/core/router/app_router.gr.dart' as autoroute;
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage(name: 'MainTabView')
class MainTabView extends StatelessWidget {
  const MainTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<MainTabBloc>()..add(MainTabEvent.initDynamicLink(context)),
        ),
        BlocProvider(
          create: (context) =>
              getIt<HomeBloc>()..add(HomeEvent.getProductList()),
        ),
      ],
      child: BlocBuilder<MainTabBloc, MainTabState>(
        builder: (context, state) {
          return DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: getAppbar(state, context),
              body: GestureDetector(
                onTap: () {
                  AppFocus.unfocus(context);
                },
                child: IndexedStack(
                  index: state.pageIndex,
                  children: List<Widget>.generate(
                    context.read<MainTabBloc>().pageList.length,
                    (int index) {
                      return Navigator(
                        onGenerateRoute: (RouteSettings settings) {
                          return onGenerateRoute(
                            settings,
                            context.read<MainTabBloc>().pageList[index],
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
              bottomNavigationBar: CustomBottomNavigationWidget(),
            ),
          );
        },
      ),
    );
  }
}

getAppbar(MainTabState state, BuildContext context) {
  switch (state.selectedTab) {
    case 0:
      return CustomAppBar(
        title: StringConstant.browseProducts,
        showBackBtn: false,
      );
    case 1:
      return CustomAppBar(
        title: StringConstant.myFavourites,
        showBackBtn: false,
      );
    case 2:
      return CustomAppBar(title: StringConstant.myAccount, showBackBtn: false);
    default:
  }
}

Route? onGenerateRoute(RouteSettings settings, String tabItem) {
  return MaterialPageRoute(
    settings: settings,
    builder: (context) {
      if (tabItem == autoroute.HomeView.name) {
        return HomeView();
      } else if (tabItem == autoroute.FavouritesView.name) {
        return FavouritesView();
      } else if (tabItem == autoroute.MyAccountView.name) {
        return MyAccountView();
      }
      return Container();
    },
  );
}
