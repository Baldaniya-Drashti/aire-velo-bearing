// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

import 'package:aire_velo_bearings/core/constants/font_constants.dart';
import 'package:aire_velo_bearings/core/constants/string_constant.dart';
import 'package:aire_velo_bearings/core/utils/math_utils.dart';
import 'package:auto_route/auto_route.dart';
import 'package:aire_velo_bearings/application/auth_status/auth_status_bloc.dart';
import 'package:aire_velo_bearings/presentation/common/widgets/base_text.dart';
import 'package:aire_velo_bearings/presentation/core/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

@RoutePage(name: 'MyAccountView')
class MyAccountView extends StatelessWidget {
  const MyAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthStatusBloc, AuthStatusState>(
      listener: (context, state) {},
      child: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: getSize(20),
          vertical: getSize(20),
        ),
        children: [
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
          ),
          customTile(
            icon: Icons.lock_outline,
            title: StringConstant.changePassword,
          ),
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
            icon: Icons.shield_outlined,
            title: StringConstant.legalAndPolicies,
          ),
          customTile(
            icon: Icons.logout_rounded,
            title: StringConstant.logout,
            isLogout: true,
          ),
        ],
      ),
    );
  }

  Widget customTile({
    required String title,
    required IconData icon,
    bool isLogout = false,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: getSize(10)),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [BoxShadow(color: AppColors.lightGrey, blurRadius: 10)],
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: (isLogout) ? AppColors.red : AppColors.black,
          size: getSize(25),
        ),
        title: BaseText(
          text: title,
          fontWeight: FontWeight.w600,
          textColor: (isLogout) ? AppColors.red : null,
        ),
        trailing: (isLogout)
            ? null
            : Icon(
                Icons.arrow_forward_ios_rounded,
                color: AppColors.grey,
                size: getSize(20),
              ),
      ),
    );
  }
}
