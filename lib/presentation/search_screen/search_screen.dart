import 'package:aire_velo_bearings/application/search_bloc/search_bloc.dart';
import 'package:aire_velo_bearings/core/constants/string_constant.dart';
import 'package:aire_velo_bearings/core/utils/math_utils.dart';
import 'package:aire_velo_bearings/infrastructure/sub_category_dto/sub_category_dto.dart';
import 'package:aire_velo_bearings/injection.dart';
import 'package:aire_velo_bearings/presentation/common/utils/app_focus.dart';
import 'package:aire_velo_bearings/presentation/common/widgets/center_loading_indicator.dart';
import 'package:aire_velo_bearings/presentation/common/widgets/paginated_list_view.dart';
import 'package:aire_velo_bearings/presentation/common/widgets/something_wrong_text.dart';
import 'package:aire_velo_bearings/presentation/core/widgets/inputs/custom_app_bar.dart';
import 'package:aire_velo_bearings/presentation/search_field/search_field.dart';
import 'package:aire_velo_bearings/presentation/search_screen/widgets/search_records.dart';
import 'package:aire_velo_bearings/presentation/search_screen/widgets/show_filter_bottom_sheet.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

@RoutePage(name: 'SearchScreen')
class SearchScreen extends StatefulWidget {
  final SubCategoryDTO? category;
  const SearchScreen({super.key, this.category});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // if (widget.searchText == null) {
      _focusNode.requestFocus();
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SearchBloc>()
        ..add(SearchEvent.initialEvent(val: widget.category))
        ..add(SearchEvent.loadAllFilterList())
        ..add(SearchEvent.getCategoryList()),
      child: BlocBuilder<SearchBloc, SearchState>(
        builder: (context, state) {
          return GestureDetector(
            onTap: () {
              AppFocus.unfocus(context);
            },
            child: Scaffold(
              appBar: CustomAppBar(title: StringConstant.searchProducts),
              body: Padding(
                padding: EdgeInsets.symmetric(horizontal: getSize(15)),
                child: Column(
                  children: [
                    SearchField(
                      focusNode: _focusNode,
                      onSearch: (query) {
                        context.read<SearchBloc>().add(
                          SearchEvent.getSearchText(val: query),
                        );
                      },
                      onFilter: () {
                        ShowFilterBottomSheet.bottomSheet(
                          context,
                          searchBloc: context.read<SearchBloc>(),
                        );
                      },
                    ),
                    Gap(getSize(20)),
                    Expanded(
                      child: PaginatedListView(
                        refreshController:
                            getIt<SearchBloc>().refreshController,
                        isNoDataFound: state.isNoDataFound,
                        onRefresh: () {
                          context.read<SearchBloc>().add(
                            SearchEvent.onSearch(isRefresh: true),
                          );
                        },
                        onLoading: () {
                          context.read<SearchBloc>().add(
                            SearchEvent.onSearch(isRefresh: false),
                          );
                        },
                        child: (state.isLoading)
                            ? CenterLoadingIndicator(isOnlyLoader: true)
                            : state.isErrorInAPI
                            ? SomethingWrong()
                            : GridView.builder(
                                itemCount: state.productList.length,
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      mainAxisSpacing: 5,
                                      crossAxisSpacing: 5,
                                      childAspectRatio: 0.48,
                                    ),
                                itemBuilder: (context, index) {
                                  final prod = state.productList[index];
                                  return SearchRecords(
                                    record: prod,
                                    isFavourite: state.favouriteIds.contains(
                                      prod.id,
                                    ),
                                    onFavouriteTap: () {
                                      context.read<SearchBloc>().add(
                                        SearchEvent.toggleFavourite(
                                          prod.id ?? 0,
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
