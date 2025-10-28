import 'package:aire_velo_bearings/core/utils/math_utils.dart';
import 'package:aire_velo_bearings/presentation/core/styles/app_colors.dart';
import 'package:flutter/material.dart';

class CenterLoadingIndicator extends StatelessWidget {
  const CenterLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.black.withValues(alpha: 0.05),
      alignment: Alignment.center,
      child: Container(
        height: getSize(80),
        width: getSize(80),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(getSize(10)),
        ),
        padding: EdgeInsets.all(getSize(10)),
        alignment: Alignment.center,
        child: CircularProgressIndicator(color: AppColors.primary),
      ),
    );
  }
}
