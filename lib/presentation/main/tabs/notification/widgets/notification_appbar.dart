// ignore_for_file: prefer_const_constructors

import 'package:aire_velo_bearings/core/constants/string_constant.dart';
import 'package:aire_velo_bearings/core/utils/math_utils.dart';
import 'package:aire_velo_bearings/presentation/common/widgets/base_text.dart';
import 'package:aire_velo_bearings/presentation/core/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NotificationAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const NotificationAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      automaticallyImplyLeading: true,
      scrolledUnderElevation: 0,
      backgroundColor: AppColors.white,
      centerTitle: true,
      title: BaseText(
        fontSize: 16,
        text: StringConstant.notification,
        fontWeight: FontWeight.w600,
      ),
      elevation: 0,
      bottom: TabBar(
        onTap: (value) {},
        automaticIndicatorColorAdjustment: true,
        labelStyle: TextStyle(
          fontSize: getFontSize(14),
          fontWeight: FontWeight.w500,
          color: AppColors.black.withValues(alpha: 0.5),
          fontFamily: 'Inter',
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: getFontSize(14),
          fontWeight: FontWeight.w500,
          color: AppColors.black.withValues(alpha: 0.5),
          fontFamily: 'Inter',
        ),
        labelColor: AppColors.black,
        unselectedLabelColor: AppColors.black.withValues(alpha: 0.60),
        splashFactory: NoSplash.splashFactory,
        dividerColor: AppColors.black.withValues(alpha: 0.10),
        indicatorColor: AppColors.primary,
        indicatorSize: TabBarIndicatorSize.tab,
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        indicatorPadding: EdgeInsets.zero,
        labelPadding: EdgeInsets.zero,
        dividerHeight: getSize(2.5),
        indicatorWeight: getSize(2.5),
        tabs: [
          Tab(
            child: getTabTitleMethod(
              title: StringConstant.allNotification,
              count: 1,
              index: 0,
            ),
          ),
          Tab(
            child: getTabTitleMethod(
              title: StringConstant.allMessages,
              count: 1,
              index: 1,
            ),
          ),
        ],
      ),
    );
  }

  Row getTabTitleMethod({
    required String title,
    required int count,
    required int index,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BaseText(text: title, fontSize: 14, textColor: AppColors.black),
        SizedBox(width: getSize(4)),
        Visibility(
          visible: count > 0,
          child: Container(
            padding: EdgeInsets.all(getSize(5)),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColors.primary,
              shape: BoxShape.circle,
            ),
            child: BaseText(
              text: count.toString(),
              fontSize: 10,
              fontWeight: FontWeight.w500,
              textColor: AppColors.white,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(getSize(100));
}
