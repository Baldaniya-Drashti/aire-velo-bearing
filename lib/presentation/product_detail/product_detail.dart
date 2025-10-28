import 'package:aire_velo_bearings/application/product_detail_bloc/product_detail_bloc.dart';
import 'package:aire_velo_bearings/core/constants/font_constants.dart';
import 'package:aire_velo_bearings/core/constants/string_constant.dart';
import 'package:aire_velo_bearings/core/utils/math_utils.dart';
import 'package:aire_velo_bearings/injection.dart';
import 'package:aire_velo_bearings/presentation/common/widgets/base_text.dart';
import 'package:aire_velo_bearings/presentation/core/styles/app_colors.dart';
import 'package:aire_velo_bearings/presentation/core/widgets/buttons/common_button.dart';
import 'package:aire_velo_bearings/presentation/core/widgets/inputs/custom_app_bar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

@RoutePage(name: 'ProductDetail')
class ProductDetail extends StatelessWidget {
  final String title;
  ProductDetail({super.key, required this.title});

  final List<String> imageUrls = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRD2YAF4IlF_XqEJa4rJ73Owm2Qp0oc03fPNKSEc8Qu0C5vu4peo_V5EF-_paHFOj71m9Q&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQw-NE17nqEX8l1u1RyoXUTYmNFvZpmI2BSl7Bc6V4AxAU5ikY6hle-Y-LuAoz46L_HhHc&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYOIZ-U1WNFd5XrSgyAY7BqVHjmlevDD-VKgSxIunMt2O6DRpaGn4nc1iSeNwne0nHakI&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQORur78yVZ5S7zwp39wup7eH6xr8Du1oqHuBWS5UPmrmUWLW8otkTPuPoJUnHFvLf4j1A&usqp=CAU',
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProductDetailBloc>(),
      child: BlocBuilder<ProductDetailBloc, ProductDetailState>(
        builder: (context, state) {
          return Scaffold(
            appBar: CustomAppBar(title: StringConstant.productDetail),
            body: SingleChildScrollView(
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
                          text:
                              "AC3344-SLT-BO SLT HEADSET BEARING 33 x 44 x 6 – 36/45",
                          fontSize: 20,
                          fontFamily: FontConstant.jost,
                          fontWeight: FontWeight.w600,
                          textAlign: TextAlign.center,
                        ),
                        Gap(getSize(15)),
                        BaseText(
                          text:
                              "AC3344-SLT-BO SLT HEADSET BEARING 33 x 44 x 6 – 36/45 CANYON CF SLX LOWER BEARING",
                          fontSize: 12,
                          textAlign: TextAlign.center,
                        ),
                        commonDivider(),
                        BaseText(
                          text:
                              "SLT Solid Lube Technology utilized in a headset bearing, instead of using a cage and grease a polymer is used to fill the space.\nThe polymer creates a solid seal up to the internal walls of the bearing preventing liquids and fine grit form getting in to the bearing raceways.\nBlack Oxide outer coating to prevent rust.",
                          fontSize: 12,
                          lineHeight: 1.5,
                          maxLines: 50,
                        ),
                        commonDivider(),
                        tableRow(
                          title: StringConstant.weight,
                          value: "0.035${StringConstant.kg}",
                        ),
                        tableRow(
                          title: StringConstant.dimensions,
                          value: "30 x 41.8 x 8${StringConstant.mm}",
                          isEven: false,
                        ),
                        tableRow(
                          title: StringConstant.dimensions,
                          value: "33 x 44 x 6 36/45",
                        ),
                        tableRow(
                          title: StringConstant.id,
                          value: "33",
                          isEven: false,
                        ),
                        tableRow(title: StringConstant.od, value: "44"),
                        tableRow(
                          title: StringConstant.depth,
                          value: "6",
                          isEven: false,
                        ),
                        tableRow(
                          title: StringConstant.chamferAngles,
                          value: "36/45",
                        ),
                        tableRow(
                          title: StringConstant.internalChamferAngle,
                          value: "36",
                          isEven: false,
                        ),
                        tableRow(
                          title: StringConstant.externalChamferAngle,
                          value: "45",
                        ),
                        tableRow(
                          title: StringConstant.material,
                          value: "Black Oxide/SLT",
                          isEven: false,
                        ),
                        Gap(getSize(10)),
                        tableRow(
                          title: "£45.00",
                          value: "In Stock",
                          isTotal: true,
                          isEven: false,
                        ),
                        Gap(getSize(10)),
                        CommonButton(
                          onPressed: () {},
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
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                height: getSize(300),
                enableInfiniteScroll: false,
                viewportFraction: 1.0,
                onPageChanged: (index, reason) {
                  context.read<ProductDetailBloc>().add(
                    ProductDetailEvent.imageIndexChanged(index),
                  );
                },
              ),
              items: imageUrls.map((url) {
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
          count: imageUrls.length,
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
