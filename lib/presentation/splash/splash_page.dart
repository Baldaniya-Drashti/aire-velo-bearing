// ignore_for_file: use_build_context_synchronously
import 'package:aire_velo_bearings/application/auth_status/auth_status_bloc.dart';
import 'package:aire_velo_bearings/core/constants/png_image_constants.dart';
import 'package:aire_velo_bearings/core/router/app_router.gr.dart';
import 'package:aire_velo_bearings/core/utils/math_utils.dart';
import 'package:aire_velo_bearings/presentation/core/styles/app_colors.dart';
import 'package:auto_route/auto_route.dart';
import 'package:aire_velo_bearings/core/helper/internet_connectivity_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage(name: 'splashPage')
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthStatusBloc, AuthStatusState>(
      listener: (context, state) async {
        await NetworkListener().navigateWhenOnline(() async {
          await Future.delayed(const Duration(seconds: 1));
          await state.map(
            introScreenVisibilty: (_) {},
            initial: (_) {},
            authenticated: (value) async {
              await context.router.replace(PageRouteInfo(MainTabView.name));
            },
            unAuthenticated: (value) async {
              await context.router.replace(PageRouteInfo(MainTabView.name));
              // await context.router.replace(PageRouteInfo(Onboarding.name));
            },
          );
        });
      },
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: Center(
          child: Image.asset(
            PngImageConstants.splashLogo,
            height: getSize(81),
            width: getSize(270),
          ),
        ),
      ),
    );
  }
}
