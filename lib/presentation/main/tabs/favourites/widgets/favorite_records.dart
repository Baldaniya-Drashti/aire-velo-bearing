import 'package:aire_velo_bearings/core/constants/string_constant.dart';
import 'package:aire_velo_bearings/core/router/app_router.gr.dart';
import 'package:aire_velo_bearings/core/utils/math_utils.dart';
import 'package:aire_velo_bearings/infrastructure/favorites_dto/favorites_dto.dart';
import 'package:aire_velo_bearings/presentation/common/widgets/base_text.dart';
import 'package:aire_velo_bearings/presentation/core/styles/app_colors.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FavoriteRecords extends StatelessWidget {
  final FavoritesDTO record;
  final bool isFavourite;
  final VoidCallback onFavouriteTap;
  const FavoriteRecords({
    super.key,
    required this.record,
    required this.isFavourite,
    required this.onFavouriteTap,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: AppColors.grey, width: 0.3),
        ),
        elevation: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: getSize(150),
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(getSize(5)),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(record.image ?? ''),
                  fit: BoxFit.fill,
                ),
              ),
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: onFavouriteTap,
                child: CircleAvatar(
                  backgroundColor: AppColors.grey,
                  maxRadius: getSize(15),
                  child: Icon(
                    isFavourite ? Icons.favorite : Icons.favorite_outline,
                    color: isFavourite ? AppColors.red : AppColors.white,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                context.router.push(
                  PageRouteInfo(
                    ProductDetail.name,
                    args: ProductDetailArgs(id: record.id ?? -1),
                  ),
                );
              },
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getSize(8),
                  vertical: getSize(6),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BaseText(
                      text: record.name ?? '',
                      fontSize: 13,
                      lineHeight: 1.3,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.w600,
                    ),
                    Divider(color: AppColors.secondary),
                    attributeText(
                      title: StringConstant.dimensions,
                      value: record.additional_info?.Dimensions,
                    ),
                    attributeText(
                      title: StringConstant.id,
                      value: record.additional_info?.ID,
                    ),
                    attributeText(
                      title: StringConstant.od,
                      value: record.additional_info?.OD,
                    ),
                    attributeText(
                      title: StringConstant.depth,
                      value: record.additional_info?.Depth,
                    ),
                    Gap(getSize(8)),
                    // 🔹 Price And Button
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: getSize(30),
                            decoration: BoxDecoration(color: AppColors.red),
                            alignment: Alignment.center,
                            child: BaseText(
                              text: "£${record.price}",
                              textColor: AppColors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: getSize(30),
                            decoration: BoxDecoration(
                              color: AppColors.secondary,
                            ),
                            alignment: Alignment.center,
                            child: BaseText(
                              text: StringConstant.moreInfo,
                              textColor: AppColors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget attributeText({required String title, required String? value}) {
    return (value != null)
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: getSize(80),
                child: BaseText(
                  text: title,
                  fontSize: 12,
                  lineHeight: 1.4,
                  fontWeight: FontWeight.bold,
                  textAlign: TextAlign.start,
                  textColor: AppColors.black.withValues(alpha: 0.8),
                ),
              ),
              Expanded(
                child: BaseText(
                  text: value,
                  fontSize: 12,
                  lineHeight: 1.4,
                  maxLines: 1,
                  textAlign: TextAlign.start,
                  textColor: AppColors.black.withValues(alpha: 0.8),
                ),
              ),
            ],
          )
        : Container();
  }
}
