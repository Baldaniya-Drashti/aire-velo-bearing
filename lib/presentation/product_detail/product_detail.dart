import 'package:aire_velo_bearings/application/product_detail_bloc/product_detail_bloc.dart';
import 'package:aire_velo_bearings/core/constants/font_constants.dart';
import 'package:aire_velo_bearings/core/constants/string_constant.dart';
import 'package:aire_velo_bearings/core/utils/math_utils.dart';
import 'package:aire_velo_bearings/infrastructure/product_detail_dto/product_detail_dto.dart';
import 'package:aire_velo_bearings/injection.dart';
import 'package:aire_velo_bearings/presentation/common/widgets/base_text.dart';
import 'package:aire_velo_bearings/presentation/common/widgets/center_loading_indicator.dart';
import 'package:aire_velo_bearings/presentation/common/widgets/something_wrong_text.dart';
import 'package:aire_velo_bearings/presentation/core/styles/app_colors.dart';
import 'package:aire_velo_bearings/presentation/core/widgets/buttons/common_button.dart';
import 'package:aire_velo_bearings/presentation/core/widgets/inputs/custom_app_bar.dart';
import 'package:aire_velo_bearings/presentation/core/widgets/layout/common_url_launcher.dart';
import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:gap/gap.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

@RoutePage(name: 'ProductDetail')
class ProductDetail extends StatelessWidget {
  final int id;
  const ProductDetail({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<ProductDetailBloc>()
            ..add(ProductDetailEvent.getProductDetail(id)),
      child: BlocBuilder<ProductDetailBloc, ProductDetailState>(
        builder: (context, state) {
          final prod = state.product ?? ProductDetailDTO();
          return Scaffold(
            appBar: CustomAppBar(title: StringConstant.productDetails),
            body: (state.isLoading)
                ? CenterLoadingIndicator(isOnlyLoader: true)
                : state.isErrorInAPI
                ? SomethingWrong()
                : SingleChildScrollView(
                    child: Column(
                      children: [
                        imageView(context, state),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: getSize(20),
                            vertical: getSize(20),
                          ).copyWith(bottom: getSize(60)),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              BaseText(
                                text: prod.name ?? "",
                                fontSize: 20,
                                maxLines: 20,
                                fontFamily: FontConstant.jost,
                                fontWeight: FontWeight.w600,
                                textAlign: TextAlign.center,
                              ),
                              Gap(getSize(15)),
                              BaseText(
                                text: prod.short_description ?? '',
                                fontSize: 12,
                                maxLines: 30,
                                textAlign: TextAlign.center,
                              ),
                              commonDivider(),
                              Html(data: prod.description ?? ""),
                              commonDivider(),
                              if (prod.additional_info != null)
                                ...prod.additional_info!.entries.map((e) {
                                  int index = prod.additional_info!.keys
                                      .toList()
                                      .indexOf(e.key);
                                  return tableRow(
                                    title: e.key,
                                    value: e.value.toString(),
                                    isEven: index % 2 == 0,
                                  );
                                }),
                              Gap(getSize(10)),
                              tableRow(
                                title: "£${prod.price ?? 00.00}",

                                // "£${double.parse(prod.price ?? "0.0").toStringAsFixed(2)}",
                                value: (prod.stock_status_int == 1)
                                    ? StringConstant.outOfStock
                                    : StringConstant.inStock,
                                isTotal: true,
                                isEven: false,
                              ),
                              Gap(getSize(10)),
                              CommonButton(
                                onPressed: () {
                                  if (prod.permalink != null &&
                                      prod.permalink!.isNotEmpty) {
                                    CommonUrlLauncher.launchAppUrl(
                                      prod.permalink!,
                                    );
                                  }
                                },
                                height: 40,
                                buttonText: StringConstant.buyOnline,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
          );
        },
      ),
    );
  }

  Widget tableRow({
    required String title,
    required String value,
    bool isEven = true,
    bool isTotal = false,
  }) {
    return Container(
      color: isEven ? AppColors.lightGrey : AppColors.white,
      padding: EdgeInsets.symmetric(
        vertical: getSize(5),
        horizontal: getSize(5),
      ),
      child: Row(
        children: [
          SizedBox(
            width: getSize(180),
            child: BaseText(
              text: title,
              fontSize: isTotal ? 20 : 12,
              fontFamily: isTotal ? FontConstant.jost : null,
              fontWeight: FontWeight.w600,
              textAlign: TextAlign.start,
            ),
          ),
          Expanded(
            child: BaseText(
              text: value,
              fontSize: isTotal ? 20 : 12,
              fontFamily: isTotal ? FontConstant.jost : null,
              fontWeight: isTotal ? FontWeight.w600 : null,
              textAlign: isTotal ? TextAlign.end : TextAlign.start,
            ),
          ),
        ],
      ),
    );
  }

  Widget commonDivider() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: getSize(10)),
      child: Divider(color: AppColors.grey),
    );
  }

  Widget imageView(BuildContext context, ProductDetailState state) {
    final prod = state.product ?? ProductDetailDTO();
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                height: getSize(350),
                enableInfiniteScroll: false,
                viewportFraction: 1.0,
                onPageChanged: (index, reason) {
                  context.read<ProductDetailBloc>().add(
                    ProductDetailEvent.imageIndexChanged(index),
                  );
                },
              ),
              items: prod.images?.map((url) {
                return Builder(
                  builder: (BuildContext context) {
                    return Image.network(
                      url,
                      fit: BoxFit.fill,
                      width: double.infinity,
                    );
                  },
                );
              }).toList(),
            ),
            GestureDetector(
              onTap: () {
                context.read<ProductDetailBloc>().add(
                  ProductDetailEvent.favoriteChanged(),
                );
              },
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getSize(20),
                  vertical: getSize(10),
                ),
                child: CircleAvatar(
                  backgroundColor: AppColors.grey,
                  maxRadius: getSize(15),
                  child: Icon(
                    (state.isFavorite == 1)
                        ? Icons.favorite
                        : Icons.favorite_outline,
                    color: (state.isFavorite == 1)
                        ? AppColors.red
                        : AppColors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
        Gap(getSize(15)),
        AnimatedSmoothIndicator(
          activeIndex: state.currentImageIndex,
          count: prod.images?.length ?? 0,
          effect: WormEffect(
            dotHeight: getSize(8),
            dotWidth: getSize(8),
            spacing: getSize(5),
            activeDotColor: AppColors.black,
          ),
        ),
      ],
    );
  }
}
