import 'package:aire_velo_bearings/core/constants/string_constant.dart';
import 'package:aire_velo_bearings/presentation/common/widgets/base_text.dart';
import 'package:flutter/material.dart';

class SomethingWrong extends StatelessWidget {
  const SomethingWrong({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BaseText(
        text: StringConstant.noDataFound,
        fontSize: 18,
        fontWeight: FontWeight.w500,
        // textColor: AppColors.red,
      ),
    );
  }
}
