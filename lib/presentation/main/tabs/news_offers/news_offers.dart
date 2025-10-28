import 'package:aire_velo_bearings/core/constants/string_constant.dart';
import 'package:aire_velo_bearings/presentation/common/widgets/base_text.dart';
import 'package:aire_velo_bearings/presentation/core/styles/app_colors.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'NewsOffersView')
class NewsOffersView extends StatelessWidget {
  const NewsOffersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BaseText(
        text: StringConstant.newsOffers,
        textColor: AppColors.black,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
