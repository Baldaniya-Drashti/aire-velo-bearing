import 'package:aire_velo_bearings/application/main/home_bloc/home_bloc.dart';
import 'package:aire_velo_bearings/core/constants/font_constants.dart';
import 'package:aire_velo_bearings/core/router/app_router.gr.dart';
import 'package:aire_velo_bearings/core/utils/math_utils.dart';
import 'package:aire_velo_bearings/injection.dart';
import 'package:aire_velo_bearings/presentation/common/widgets/base_text.dart';
import 'package:aire_velo_bearings/presentation/common/widgets/center_loading_indicator.dart';
import 'package:aire_velo_bearings/presentation/common/widgets/paginated_list_view.dart';
import 'package:aire_velo_bearings/presentation/common/widgets/something_wrong_text.dart';
import 'package:aire_velo_bearings/presentation/core/styles/app_colors.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final productList = state.productList;
        return PaginatedListView(
          onRefresh: () {
            context.read<HomeBloc>().add(HomeEvent.getProductList(true));
          },
          onLoading: () {
            context.read<HomeBloc>().add(HomeEvent.getProductList(false));
          },
          refreshController: getIt<HomeBloc>().refreshController,
          child: (state.isLoading)
              ? CenterLoadingIndicator(isOnlyLoader: true)
              : state.isErrorInAPI
              ? SomethingWrong()
              : ListView.builder(
                  itemCount: productList.length,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (_, index) {
                    final record = productList[index];
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
                            image: NetworkImage(
                              record.image_url ??
                                  "https://www.airevelobearings.com/wp-content/uploads/2022/04/cat-headerbg.jpeg",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: BaseText(
                          text: record.name ?? "",
                          maxLines: 1,
                          fontSize: 20,
                          fontFamily: FontConstant.jost,
                          fontWeight: FontWeight.w600,
                          textColor: AppColors.white,
                          shadows: [
                            Shadow(color: AppColors.black, blurRadius: 10),
                          ],
                        ),
                      ),
                    );
                  },
                ),
        );
      },
    );
  }
}
