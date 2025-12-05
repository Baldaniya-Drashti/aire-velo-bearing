// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

import 'package:aire_velo_bearings/application/account_bloc/account_bloc.dart';
import 'package:aire_velo_bearings/core/constants/font_constants.dart';
import 'package:aire_velo_bearings/core/constants/string_constant.dart';
import 'package:aire_velo_bearings/core/router/app_router.gr.dart';
import 'package:aire_velo_bearings/core/utils/math_utils.dart';
import 'package:aire_velo_bearings/presentation/core/widgets/layout/common_url_launcher.dart';
import 'package:aire_velo_bearings/presentation/main/tabs/my_account/widget/logout_dialog.dart';
import 'package:auto_route/auto_route.dart';
import 'package:aire_velo_bearings/application/auth_status/auth_status_bloc.dart';
import 'package:aire_velo_bearings/presentation/common/widgets/base_text.dart';
import 'package:aire_velo_bearings/presentation/core/styles/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

@RoutePage(name: 'MyAccountView')
class MyAccountView extends StatelessWidget {
  MyAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isLoggedIn = context.watch<AccountBloc>().state.authenticated;

    return BlocListener<AuthStatusBloc, AuthStatusState>(
      listener: (context, state) {
        state.map(
          initial: (value) {},
          authenticated: (value) {},
          unAuthenticated: (value) {
            print("Logout called!");
            context.router.replaceAll([PageRouteInfo(Onboarding.name)]);
          },
        );
      },
      child: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: getSize(20),
          vertical: getSize(20),
        ),
        children: [
          if (isLoggedIn) ...[
            BaseText(
              text: StringConstant.general,
              textColor: AppColors.black,
              fontFamily: FontConstant.jost,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            Gap(getSize(10)),
            customTile(
              icon: Icons.person_outline,
              title: StringConstant.editProfile,
              onTap: () {
                context.router.push(PageRouteInfo(EditProfile.name)).then((
                  value,
                ) {
                  if (value == true) {
                    context.read<AccountBloc>().add(
                      AccountEvent.getAccountDetailEvent(),
                    );
                  }
                });
              },
            ),
            customTile(
              icon: Icons.lock_outline,
              title: StringConstant.changePassword,
              onTap: () {
                context.router.push(PageRouteInfo(ChangePassword.name));
              },
            ),
          ],
          Padding(
            padding: EdgeInsets.symmetric(vertical: getSize(10)),
            child: BaseText(
              text: StringConstant.preferences,
              textColor: AppColors.black,
              fontFamily: FontConstant.jost,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          customTile(
            onTap: () {
              CommonUrlLauncher.launchAppUrl(
                "https://www.airevelobearings.com/privacy-policy/",
              );
            },
            icon: Icons.shield_outlined,
            title: StringConstant.legalAndPolicies,
          ),
          customTile(
            onTap: () {
              CommonUrlLauncher.launchAppUrl(
                "https://www.airevelobearings.com/contact-us/",
              );
            },
            icon: CupertinoIcons.chat_bubble,
            title: StringConstant.getInTouch,
          ),
          if (isLoggedIn) ...[
            customTile(
              icon: Icons.logout_rounded,
              title: StringConstant.logout,
              isLogout: true,
              onTap: () {
                LogOutDialog().logoutDialog(
                  context,
                  onPressedAccept: () {
                    context.router.maybePop().then(
                      (value) => context.read<AuthStatusBloc>().add(
                        AuthStatusEvent.signedOut(),
                      ),
                    );
                  },
                  onPressedReject: () {
                    context.router.maybePop();
                  },
                );
              },
            ),
            customTile(
              icon: Icons.delete_forever,
              title: StringConstant.deleteAccount,
              isLogout: true,
              onTap: () {
                LogOutDialog().deleteDialog(
                  context,
                  onPressedAccept: () {
                    context.router.maybePop().then(
                      (value) => context.read<AuthStatusBloc>().add(
                        AuthStatusEvent.deleteAccount(),
                      ),
                    );
                  },
                  onPressedReject: () {
                    context.router.maybePop();
                  },
                );
              },
            ),
          ],

          if (!isLoggedIn)
            customTile(
              icon: Icons.login,
              title: StringConstant.logIn,
              isLogin: true,
              onTap: () {
                context.router.push(PageRouteInfo(Onboarding.name));
              },
            ),
        ],
      ),
    );
  }

  Widget customTile({
    required String title,
    required IconData icon,
    bool isLogout = false,
    bool isLogin = false,
    VoidCallback? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: getSize(10)),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(color: AppColors.lightGrey, blurRadius: 10)],
        ),
        child: ListTile(
          leading: Icon(
            icon,
            color: (isLogout)
                ? AppColors.red
                : (isLogin)
                ? AppColors.primary
                : AppColors.black,
            size: getSize(25),
          ),
          title: BaseText(
            text: title,
            fontWeight: FontWeight.w600,
            textColor: (isLogout)
                ? AppColors.red
                : (isLogin)
                ? AppColors.primary
                : null,
          ),
          trailing: (isLogout)
              ? null
              : Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: AppColors.grey,
                  size: getSize(20),
                ),
        ),
      ),
    );
  }
}
