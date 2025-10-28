import 'package:aire_velo_bearings/application/search_bloc/search_bloc.dart';
import 'package:aire_velo_bearings/core/constants/string_constant.dart';
import 'package:aire_velo_bearings/core/router/app_router.gr.dart';
import 'package:aire_velo_bearings/core/utils/math_utils.dart';
import 'package:aire_velo_bearings/injection.dart';
import 'package:aire_velo_bearings/presentation/common/utils/app_focus.dart';
import 'package:aire_velo_bearings/presentation/common/widgets/center_loading_indicator.dart';
import 'package:aire_velo_bearings/presentation/core/widgets/inputs/custom_app_bar.dart';
import 'package:aire_velo_bearings/presentation/search_field/search_field.dart';
import 'package:aire_velo_bearings/presentation/search_screen/widgets/search_records.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

@RoutePage(name: 'SearchScreen') /* 
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
 */
class SearchScreen extends StatefulWidget {
  final String? searchText;
  const SearchScreen({super.key, this.searchText});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.searchText == null) {
        _focusNode.requestFocus();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<SearchBloc>()
            ..add(SearchEvent.getSearchText(val: widget.searchText)),
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
                      initialValue: widget.searchText,
                      focusNode: _focusNode,
                      onSearch: (query) {
                        context.read<SearchBloc>().add(
                          SearchEvent.getSearchText(val: query),
                        );
                      },
                    ),
                    Gap(getSize(20)),
                    Expanded(
                      child: (state.isLoading && widget.searchText != null)
                          ? CenterLoadingIndicator()
                          : GridView.builder(
                              itemCount: 10,
                              itemBuilder: (con, index) {
                                return GestureDetector(
                                  onTap: () {
                                    context.router.push(
                                      PageRouteInfo(
                                        ProductDetail.name,
                                        args: ProductDetailArgs(title: ""),
                                      ),
                                    );
                                  },
                                  child: SearchRecords(),
                                );
                              },
                              padding: EdgeInsets.only(bottom: getSize(50)),
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: getSize(10),
                                    mainAxisSpacing: getSize(10),
                                    childAspectRatio: 0.53,
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
