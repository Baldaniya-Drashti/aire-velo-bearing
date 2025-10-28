import 'package:aire_velo_bearings/core/router/app_router.gr.dart';
import 'package:aire_velo_bearings/core/utils/common_listing.dart';
import 'package:aire_velo_bearings/core/utils/math_utils.dart';
import 'package:aire_velo_bearings/infrastructure/common_model/common_model.dart';
import 'package:aire_velo_bearings/presentation/common/widgets/base_text.dart';
import 'package:aire_velo_bearings/presentation/core/styles/app_colors.dart';
import 'package:aire_velo_bearings/presentation/core/widgets/inputs/custom_app_bar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'SubCategoryList')
class SubCategoryList extends StatelessWidget {
  final CommonModel category;
  const SubCategoryList({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: category.title ?? ""),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: getSize(15)),
        child: Column(
          children: [
            Container(
              height: getSize(120),
              margin: EdgeInsets.only(bottom: getSize(30), top: getSize(20)),
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
                  image: NetworkImage(category.image ?? ""),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                padding: EdgeInsets.symmetric(
                  horizontal: getSize(10),
                ).copyWith(bottom: getSize(50)),
                itemCount: CommonListing.subCategoryList.length,
                itemBuilder: (_, index) {
                  final subCategory = CommonListing.subCategoryList[index];
                  return GestureDetector(
                    onTap: () {
                      context.router.push(
                        PageRouteInfo(
                          SearchScreen.name,
                          args: SearchScreenArgs(searchText: subCategory.title),
                        ),
                      );
                    },
                    child: BaseText(
                      text: subCategory.title ?? "",
                      fontSize: 14,
                    ),
                  );
                },
                separatorBuilder: (_, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: getSize(10)),
                    child: Divider(color: AppColors.grey),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
