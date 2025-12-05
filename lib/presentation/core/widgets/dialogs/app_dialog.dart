import 'package:aire_velo_bearings/core/constants/font_constants.dart';
import 'package:aire_velo_bearings/core/constants/string_constant.dart';
import 'package:aire_velo_bearings/core/router/app_router.gr.dart';
import 'package:aire_velo_bearings/core/utils/math_utils.dart';
import 'package:aire_velo_bearings/presentation/common/widgets/base_text.dart';
import 'package:aire_velo_bearings/presentation/core/styles/app_colors.dart';
import 'package:aire_velo_bearings/presentation/core/widgets/buttons/common_button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

/// Shows a dialog.
/// Use in priority cases where it's necessary for the user to see
/// the result as user will need to take action to move forward.
class AppDialog {
  static Future<bool?> showInfo(BuildContext context) async {
    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return Dialog(
          backgroundColor: AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: EdgeInsets.all(getSize(20)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.lock, size: 48, color: AppColors.primary),
                Gap(getSize(12)),
                BaseText(
                  text: StringConstant.loginRequired,
                  fontSize: 25,
                  fontFamily: FontConstant.jost,
                  fontWeight: FontWeight.w600,
                ),
                Gap(getSize(8)),
                BaseText(
                  text: StringConstant.pleaseLoginToAddProductsToYourWishlist,
                  fontSize: 15,
                  textColor: Colors.black54,
                  textAlign: TextAlign.center,
                ),
                Gap(getSize(24)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: CommonButton(
                        height: getSize(40),
                        onPressed: () {
                          context.router.maybePop(false);
                        },
                        buttonText: StringConstant.cancel,
                      ),
                    ),
                    Gap(getSize(10)),
                    Expanded(
                      child: CommonButton(
                        height: getSize(40),

                        onPressed: () {
                          context.router.maybePop(true);
                        },
                        buttonText: StringConstant.logIn,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    ).then((value) {
      if (value == true) {
        context.router.push(PageRouteInfo(Onboarding.name));
      }
    });
  }

  static Future<void> showSuccess(
    BuildContext context,
    String successMessage,
  ) async {
    // QuickAlert.show(
    //   context: context,
    //   type: QuickAlertType.success,
    //   text: successMessage,
    // );
  }

  static Future<void> showError(
    BuildContext context,
    String successMessage,
  ) async {
    // QuickAlert.show(
    //   context: context,
    //   type: QuickAlertType.error,
    //   text: successMessage,
    // );
  }
}
