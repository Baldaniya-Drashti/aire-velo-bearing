// ignore_for_file: prefer_const_constructors
import 'package:aire_velo_bearings/core/constants/string_constant.dart';
import 'package:aire_velo_bearings/core/router/app_router.gr.dart';
import 'package:aire_velo_bearings/core/utils/math_utils.dart';
import 'package:aire_velo_bearings/presentation/core/styles/app_colors.dart';
import 'package:aire_velo_bearings/presentation/core/widgets/inputs/custom_text_field.dart';
import 'package:aire_velo_bearings/presentation/main/tabs/home/widgets/category_list.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

@RoutePage(name: 'HomeView')
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getSize(15)),
      child: Column(
        children: [
          _searchField(),
          Gap(getSize(10)),
          Expanded(child: CategoryList()),
        ],
      ),
    );
  }

  Widget _searchField() {
    return CustomTextField(
      readOnly: true,
      onTap: () {
        context.router.push(PageRouteInfo(SearchScreen.name));
      },
      hintText: StringConstant.search,
      prefixIcon: Icon(Icons.search, color: AppColors.lightGrey),
    );
  }
}
