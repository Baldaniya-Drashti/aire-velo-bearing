import 'package:aire_velo_bearings/core/constants/font_constants.dart';
import 'package:aire_velo_bearings/core/router/app_router.gr.dart';
import 'package:aire_velo_bearings/core/utils/common_listing.dart';
import 'package:aire_velo_bearings/core/utils/math_utils.dart';
import 'package:aire_velo_bearings/presentation/common/widgets/base_text.dart';
import 'package:aire_velo_bearings/presentation/core/styles/app_colors.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: CommonListing.categoryList.length,
      itemBuilder: (_, index) {
        final record = CommonListing.categoryList[index];
        return GestureDetector(
          onTap: () {
            context.router.push(
              PageRouteInfo(
                SubCategoryList.name,
                args: SubCategoryListArgs(category: record),
              ),
            );
          },
          child: Container(
            height: getSize(120),
            padding: EdgeInsets.symmetric(horizontal: getSize(20)),
            margin: EdgeInsets.symmetric(vertical: getSize(8)),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: AppColors.black,
              borderRadius: BorderRadius.circular(getSize(15)),
              boxShadow: [
                BoxShadow(
                  color: AppColors.black.withValues(alpha: 0.5),
                  blurRadius: 5,
                ),
              ],
              image: DecorationImage(
                image: NetworkImage(record.image ?? ""),
                fit: BoxFit.fill,
              ),
            ),
            child: BaseText(
              text: record.title ?? "",
              maxLines: 1,
              fontSize: 20,
              fontFamily: FontConstant.jost,
              fontWeight: FontWeight.w600,
              textColor: AppColors.white,
              shadows: [Shadow(color: AppColors.black, blurRadius: 10)],
            ),
          ),
        );
      },
    );
  }
}
