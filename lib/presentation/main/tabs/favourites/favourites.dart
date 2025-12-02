import 'package:aire_velo_bearings/application/main/favorites_bloc/favorites_bloc.dart';
import 'package:aire_velo_bearings/core/utils/math_utils.dart';
import 'package:aire_velo_bearings/injection.dart';
import 'package:aire_velo_bearings/presentation/common/widgets/center_loading_indicator.dart';
import 'package:aire_velo_bearings/presentation/common/widgets/paginated_list_view.dart';
import 'package:aire_velo_bearings/presentation/common/widgets/something_wrong_text.dart';
import 'package:aire_velo_bearings/presentation/main/tabs/favourites/widgets/favorite_records.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

@RoutePage(name: 'FavouritesView')
class FavouritesView extends StatelessWidget {
  const FavouritesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoritesBloc, FavoritesState>(
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: getSize(10)),
          child: PaginatedListView(
            onRefresh: () {
              context.read<FavoritesBloc>().add(
                FavoritesEvent.getFavoritesList(true),
              );
            },
            onLoading: () {
              context.read<FavoritesBloc>().add(
                FavoritesEvent.getFavoritesList(false),
              );
            },
            isNoDataFound: state.isNoDataFound,
            refreshController: getIt<FavoritesBloc>().refreshController,
            child: (state.isLoading)
                ? CenterLoadingIndicator(isOnlyLoader: true)
                : (state.showError)
                ? SomethingWrong()
                : StaggeredGrid.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: getSize(2),
                    mainAxisSpacing: getSize(2),

                    children: [
                      for (var prod in state.favouriteList)
                        FavoriteRecords(
                          record: prod,
                          isFavourite: state.favouriteIds.contains(prod.id),
                          onFavouriteTap: () {
                            context.read<FavoritesBloc>().add(
                              FavoritesEvent.toggleFavourite(prod.id ?? 0),
                            );
                          },
                        ),
                    ],
                  ),
            /* DynamicHeightGridView(
                    itemCount: state.favouriteList.length,
                    crossAxisCount: 2,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    builder: (BuildContext context, int index) {
                      final prod = state.favouriteList[index];
                      return FavoriteRecords(
                        record: prod,
          
                        isFavourite: state.favouriteIds.contains(prod.id),
                        onFavouriteTap: () {
                          context.read<FavoritesBloc>().add(
                            FavoritesEvent.toggleFavourite(prod.id ?? 0),
                          );
                        },
                      );
                    },
                  ), */
            /* GridView.builder(
                    itemCount: state.favouriteList.length,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                      childAspectRatio: 0.48,
                    ),
                    itemBuilder: (con, index) {
                      final prod = state.favouriteList[index];
                      return FavoriteRecords(
                        record: prod,
                        isFavourite: state.favouriteIds.contains(prod.id),
                        onFavouriteTap: () {
                          context.read<FavoritesBloc>().add(
                            FavoritesEvent.toggleFavourite(prod.id ?? 0),
                          );
                        },
                      );
                    },
                    padding: EdgeInsets.symmetric(
                      horizontal: getSize(10),
                      vertical: getSize(20),
                    ),
                  ), */
          ),
        );
      },
    );
  }
}
