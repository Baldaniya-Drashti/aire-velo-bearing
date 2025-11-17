// ignore_for_file: prefer_const_constructors

import 'package:aire_velo_bearings/application/main/main_tab/main_tab_bloc.dart';
import 'package:aire_velo_bearings/core/constants/font_constants.dart';
import 'package:aire_velo_bearings/core/constants/string_constant.dart';
import 'package:aire_velo_bearings/core/constants/svg_image_constants.dart';
import 'package:aire_velo_bearings/core/utils/math_utils.dart';
import 'package:aire_velo_bearings/presentation/core/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavigationWidget extends StatelessWidget {
  const CustomBottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainTabBloc, MainTabState>(
      builder: (context, state) {
        return Theme(
          data: ThemeData(splashFactory: NoSplash.splashFactory),
          child: BottomNavigationBar(
            currentIndex: state.selectedTab,
            backgroundColor: AppColors.white,
            selectedItemColor: AppColors.black,
            unselectedItemColor: AppColors.black.withValues(alpha: 0.3),
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            selectedLabelStyle: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: getFontSize(10),
              height: getSize(2),
              fontFamily: FontConstant.jost,
            ),
            unselectedLabelStyle: TextStyle(
              // color: AppColors.black.withValues(alpha: 0.8),
              fontWeight: FontWeight.w600,
              height: getSize(2),
              fontSize: getFontSize(10),
              fontFamily: FontConstant.jost,
            ),
            onTap: (value) {
              context.read<MainTabBloc>().add(MainTabEvent.tabChange(value));
            },
            items: [
              BottomNavigationBarItem(
                icon: icon(SvgImageConstant.home),
                label: StringConstant.home,
                activeIcon: icon(SvgImageConstant.home),
              ),
              BottomNavigationBarItem(
                icon: icon(SvgImageConstant.heart),
                label: StringConstant.myFavourites,
                activeIcon: icon(SvgImageConstant.heart),
              ),
              BottomNavigationBarItem(
                icon: icon(SvgImageConstant.person),
                label: StringConstant.myAccount,
                activeIcon: icon(SvgImageConstant.person),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget icon(String icon) {
    return SvgPicture.asset(icon, height: getSize(22), width: getSize(20));
  }
}
