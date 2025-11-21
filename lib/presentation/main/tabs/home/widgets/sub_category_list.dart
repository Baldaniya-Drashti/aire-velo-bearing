import 'package:aire_velo_bearings/application/category_bloc/category_bloc.dart';
import 'package:aire_velo_bearings/core/router/app_router.gr.dart';
import 'package:aire_velo_bearings/core/utils/math_utils.dart';
import 'package:aire_velo_bearings/infrastructure/home_dto/home_dto.dart';
import 'package:aire_velo_bearings/injection.dart';
import 'package:aire_velo_bearings/presentation/common/widgets/base_text.dart';
import 'package:aire_velo_bearings/presentation/common/widgets/center_loading_indicator.dart';
import 'package:aire_velo_bearings/presentation/common/widgets/paginated_list_view.dart';
import 'package:aire_velo_bearings/presentation/common/widgets/something_wrong_text.dart';
import 'package:aire_velo_bearings/presentation/core/styles/app_colors.dart';
import 'package:aire_velo_bearings/presentation/core/widgets/inputs/custom_app_bar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage(name: 'SubCategoryList')
class SubCategoryList extends StatelessWidget {
  final HomeDTO category;
  const SubCategoryList({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SubCategoryBloc>()
        ..add(
          SubCategoryEvent.getSubCategoryList(
            id: category.id ?? -1,
            isRefresh: true,
          ),
        ),
      child: BlocBuilder<SubCategoryBloc, SubCategoryState>(
        builder: (context, state) {
          return Scaffold(
            appBar: CustomAppBar(title: category.name ?? ""),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: getSize(15)),
              child: Column(
                children: [
                  Container(
                    height: getSize(120),
                    margin: EdgeInsets.only(
                      bottom: getSize(30),
                      top: getSize(20),
                    ),
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
                      // image: DecorationImage(
                      //   image: NetworkImage(category.image ?? ""),
                      //   fit: BoxFit.fill,
                      // ),
                    ),
                  ),
                  Expanded(
                    child: PaginatedListView(
                      onRefresh: () {
                        context.read<SubCategoryBloc>().add(
                          SubCategoryEvent.getSubCategoryList(
                            id: category.id ?? -1,
                            isRefresh: true,
                          ),
                        );
                      },
                      onLoading: () {
                        context.read<SubCategoryBloc>().add(
                          SubCategoryEvent.getSubCategoryList(
                            id: category.id ?? -1,
                            isRefresh: false,
                          ),
                        );
                      },
                      refreshController:
                          getIt<SubCategoryBloc>().refreshController,
                      child: (state.isLoading)
                          ? CenterLoadingIndicator(isOnlyLoader: true)
                          : state.isErrorInAPI
                          ? SomethingWrong()
                          : ListView.separated(
                              padding: EdgeInsets.symmetric(
                                horizontal: getSize(10),
                              ).copyWith(bottom: getSize(50)),
                              itemCount: state.subCategoryList.length,
                              itemBuilder: (_, index) {
                                final subCategory =
                                    state.subCategoryList[index];
                                return GestureDetector(
                                  onTap: () {
                                    context.router.push(
                                      PageRouteInfo(
                                        SearchScreen.name,
                                        args: SearchScreenArgs(
                                          category: subCategory,
                                        ),
                                      ),
                                    );
                                  },
                                  child: BaseText(
                                    text: subCategory.name ?? "",
                                    fontSize: 14,
                                  ),
                                );
                              },
                              separatorBuilder: (_, index) {
                                return Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: getSize(10),
                                  ),
                                  child: Divider(color: AppColors.grey),
                                );
                              },
                            ),
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
}
