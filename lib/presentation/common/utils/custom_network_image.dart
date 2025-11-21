import 'package:aire_velo_bearings/core/utils/math_utils.dart';
import 'package:aire_velo_bearings/presentation/common/widgets/center_loading_indicator.dart';
import 'package:aire_velo_bearings/presentation/core/styles/app_colors.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomNetworkImage extends StatelessWidget {
  final String url;
  final double? height;
  final double? width;
  final double? errorIconSize;
  final bool showLoader;
  final BoxFit fit;
  const CustomNetworkImage({
    super.key,
    required this.url,
    this.height,
    this.width,
    this.errorIconSize,
    this.showLoader = false,
    this.fit = BoxFit.fill,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      width: width,
      height: height,
      fit: fit,
      placeholder: (context, event) {
        return (showLoader)
            ? CenterLoadingIndicator(isOnlyLoader: true)
            : SizedBox(
                height: getSize(150),
                width: MediaQuery.of(context).size.width,
                child: Shimmer.fromColors(
                  baseColor: AppColors.grey,
                  highlightColor: AppColors.lightGrey.withValues(alpha: 0.6),
                  period: Duration(seconds: 2),
                  child: Container(color: AppColors.red),
                ),
              ) /* Container(color: AppColors.grey.withValues(alpha: 0.5)) */;
      },
      errorWidget: (context, error, stackTrace) {
        return Center(
          child: Icon(
            Icons.broken_image,
            color: AppColors.red,
            size: errorIconSize,
          ),
        );
      },
    );
  }
}
