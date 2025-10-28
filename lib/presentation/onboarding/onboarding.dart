import 'package:aire_velo_bearings/core/constants/font_constants.dart';
import 'package:aire_velo_bearings/core/constants/png_image_constants.dart';
import 'package:aire_velo_bearings/core/constants/string_constant.dart';
import 'package:aire_velo_bearings/core/router/app_router.gr.dart';
import 'package:aire_velo_bearings/core/utils/math_utils.dart';
import 'package:aire_velo_bearings/presentation/common/widgets/base_text.dart';
import 'package:aire_velo_bearings/presentation/core/styles/app_colors.dart';
import 'package:aire_velo_bearings/presentation/core/widgets/buttons/common_button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

@RoutePage(name: 'Onboarding')
class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getSize(20)),
          child: Column(
            children: [
              Container(
                height: getSize(423),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(getSize(35)),
                  image: DecorationImage(
                    image: AssetImage(PngImageConstants.onboarding),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Gap(getSize(20)),
              BaseText(
                text: StringConstant.theUKsLargestStockistOfHeadsetBearings,
                fontFamily: FontConstant.jost,
                fontWeight: FontWeight.w600,
                fontSize: 26,
                textAlign: TextAlign.center,
                lineHeight: 1,
              ),
              Gap(getSize(20)),
              BaseText(
                text: StringConstant.onboardingDesc1,
                fontSize: 16,
                textAlign: TextAlign.center,
                lineHeight: 1.2,
              ),
              Gap(getSize(10)),
              BaseText(
                text: StringConstant.onboardingDesc2,
                fontSize: 16,
                textAlign: TextAlign.center,
                lineHeight: 1.2,
              ),
              Spacer(),
              CommonButton(
                onPressed: () {
                  context.router.push(PageRouteInfo(SignUp.name));
                },
                buttonText: StringConstant.createAccount,
              ),
              Gap(getSize(15)),
              CommonButton(
                onPressed: () {
                  context.router.push(PageRouteInfo(SignIn.name));
                },
                buttonTextColor: AppColors.black,
                backgroundColor: AppColors.white,
                buttonText: StringConstant.logIn,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
