// ignore_for_file: prefer_const_constructors

import 'package:aire_velo_bearings/application/account_bloc/account_bloc.dart';
import 'package:aire_velo_bearings/application/auth_status/auth_status_bloc.dart';
import 'package:aire_velo_bearings/core/router/app_router.dart';
import 'package:aire_velo_bearings/core/constants/string_constant.dart';
import 'package:aire_velo_bearings/core/utils/app_theme.dart';
import 'package:aire_velo_bearings/injection.dart';
import 'package:aire_velo_bearings/core/utils/life_cycle_watcher.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AccountBloc>()..add(AccountEvent.getAccountDetailEvent()),
        ),
        BlocProvider(
          create: (context) =>
              getIt<AuthStatusBloc>()
                ..add(const AuthStatusEvent.authCheckRequested()),
        ),
      ],
      child: _App(),
    );
  }
}

class _App extends StatefulWidget {
  @override
  State<_App> createState() => _AppState();
}

class _AppState extends State<_App> {
  final appRouter = getIt<AppRouter>();
  @override
  Widget build(BuildContext context) {
    return LifecycleWatcher(
      child: ScreenUtilInit(
        ensureScreenSize: true,
        child: MaterialApp.router(
          title: StringConstant.aireVeloBearings,
          theme: ThemeConfig.lightTheme,
          debugShowCheckedModeBanner: false,
          routerConfig: appRouter.config(
            navigatorObservers: () => [AutoRouteObserver()],
          ),
        ),
      ),
    );
  }
}
