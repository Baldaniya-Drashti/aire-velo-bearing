import 'package:aire_velo_bearings/core/utils/math_utils.dart';
import 'package:aire_velo_bearings/presentation/search_screen/widgets/search_records.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'FavouritesView')
class FavouritesView extends StatelessWidget {
  const FavouritesView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 10,
      itemBuilder: (con, index) {
        return SearchRecords();
      },
      padding: EdgeInsets.symmetric(
        horizontal: getSize(10),
        vertical: getSize(20),
      ),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: getSize(10),
        mainAxisSpacing: getSize(10),
        childAspectRatio: 0.53,
      ),
    );
  }
}
