import 'package:aire_velo_bearings/core/constants/string_constant.dart';
import 'package:aire_velo_bearings/core/router/app_router.gr.dart';
import 'package:aire_velo_bearings/core/utils/math_utils.dart';
import 'package:aire_velo_bearings/infrastructure/search_product_dto/search_product_dto.dart';
import 'package:aire_velo_bearings/presentation/common/widgets/base_text.dart';
import 'package:aire_velo_bearings/presentation/core/styles/app_colors.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
/* 
class SearchRecords extends StatelessWidget {
  const SearchRecords({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color: Colors.yellow,
        border: Border.all(color: AppColors.grey),
      ),
      child: Column(
        children: [
          Container(
            height: getSize(100),
            padding: EdgeInsets.symmetric(
              horizontal: getSize(10),
              vertical: getSize(5),
            ),
            decoration: BoxDecoration(
              color: AppColors.grey,
              image: DecorationImage(
                image: NetworkImage(
                  "https://www.airevelobearings.com/wp-content/uploads/2025/05/3344-SLT.jpg",
                ),
                fit: BoxFit.fill,
              ),
            ),
            alignment: Alignment.bottomRight,
            child: CircleAvatar(
              backgroundColor: AppColors.grey,
              maxRadius: getSize(15),
              child: Icon(Icons.favorite_outline, color: AppColors.white),
            ),
          ),
          Gap(getSize(10)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getSize(10)),
            child: BaseText(
              text: "AC3344-SLT-BO SLT HEADSET BEARING 33 x 44 x 6 – 36/45",
              fontWeight: FontWeight.w600,
              fontSize: 13,
            ),
          ),
          Divider(
            color: AppColors.secondary,
            indent: getSize(10),
            endIndent: getSize(10),
          ),
          _buildSpecRow(StringConstant.dimensions, "33 x 44 x 6 36/45"),
          _buildSpecRow(StringConstant.id, "33"),
          _buildSpecRow(StringConstant.od, "44"),
          _buildSpecRow(StringConstant.depth, "6"),
          Gap(getSize(10)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getSize(10)),
            child: Row(
              children: [
                _buttonRow(bgColor: AppColors.primary, title: "£45.00"),
                _buttonRow(
                  bgColor: AppColors.secondary,
                  title: StringConstant.moreInfo,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSpecRow(String label, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getSize(10),
      ).copyWith(bottom: getFontSize(2)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BaseText(text: label, fontSize: 11, fontWeight: FontWeight.w600),
          Spacer(),
          SizedBox(
            width: getSize(70),
            child: BaseText(
              text: value,
              fontSize: 11,
              fontWeight: FontWeight.w400,
              maxLines: 2,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buttonRow({required Color bgColor, required String title}) {
    return Expanded(
      child: Container(
        color: bgColor,
        height: getSize(30),
        alignment: Alignment.center,
        child: BaseText(text: title, textColor: AppColors.white, fontSize: 12),
      ),
    );
  }
}
 */

class SearchRecords extends StatelessWidget {
  final SearchProductDTO record;

  final bool isFavourite;
  final VoidCallback onFavouriteTap;
  const SearchRecords({
    super.key,
    required this.record,
    required this.isFavourite,
    required this.onFavouriteTap,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
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
                  image: NetworkImage(record.images?[0] ?? ''),
                  fit: BoxFit.cover,
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
            /* CustomNetworkImage(
              url: record.images?[0] ?? '',
              height: getSize(150),
              width: MediaQuery.of(context).size.width,
            ), */
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
                      value: record.attributes?.dimensions?.join(',') ?? '',
                    ),
                    attributeText(
                      title: StringConstant.id,
                      value: record.attributes?.id?.join(',') ?? '',
                    ),
                    attributeText(
                      title: StringConstant.od,
                      value: record.attributes?.od?.join(',') ?? '',
                    ),
                    attributeText(
                      title: StringConstant.depth,
                      value: record.attributes?.depth?.join(',') ?? '',
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
                              text: "£45.00",
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

  Widget attributeText({required String title, required String value}) {
    return Row(
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
    );
  }
}
