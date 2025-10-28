import 'package:aire_velo_bearings/core/constants/string_constant.dart';
import 'package:aire_velo_bearings/core/utils/math_utils.dart';
import 'package:aire_velo_bearings/presentation/common/widgets/base_text.dart';
import 'package:aire_velo_bearings/presentation/core/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
