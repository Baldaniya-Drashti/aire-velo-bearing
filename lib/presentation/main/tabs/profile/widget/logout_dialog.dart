// ignore_for_file: prefer_const_constructors

import 'package:auto_route/auto_route.dart';
import 'package:aire_velo_bearings/core/constants/string_constant.dart';
import 'package:aire_velo_bearings/core/utils/math_utils.dart';
import 'package:aire_velo_bearings/presentation/common/widgets/base_text.dart';
import 'package:aire_velo_bearings/presentation/core/styles/app_colors.dart';
import 'package:aire_velo_bearings/presentation/core/widgets/buttons/common_button.dart';
import 'package:flutter/material.dart';

class LogOutDialog extends StatelessWidget {
  const LogOutDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  logoutDialog(BuildContext context) {
    return showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          elevation: 0,
          insetPadding: EdgeInsets.symmetric(horizontal: getSize(20)),
          backgroundColor: AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(getSize(10)),
          ),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: getSize(20)),
              BaseText(
                text: StringConstant.logout,
                fontWeight: FontWeight.w600,
                textColor: AppColors.black,
              ),
              SizedBox(height: getSize(30)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: getSize(18)),
                child: BaseText(
                  text: StringConstant.logoutDesc,
                  textColor: AppColors.black.withValues(alpha: 0.60),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: getSize(30)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: getSize(18)),
                child: Row(
                  children: [
                    Expanded(
                      child: CommonButton(
                        width: getSize(160),
                        onPressed: () {
                          context.router.maybePop(false);
                        },
                        borderColor: AppColors.primary,
                        buttonTextColor: AppColors.primary,
                        backgroundColor: AppColors.white,
                        buttonText: StringConstant.cancel,
                      ),
                    ),
                    SizedBox(width: getSize(19)),
                    Expanded(
                      child: CommonButton(
                        width: getSize(160),
                        onPressed: () {
                          context.router.maybePop(true);
                        },
                        buttonText: StringConstant.cancel,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: getSize(20)),
            ],
          ),
        );
      },
    );
  }
}
