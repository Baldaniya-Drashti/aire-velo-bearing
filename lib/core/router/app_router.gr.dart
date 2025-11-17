// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:aire_velo_bearings/infrastructure/common_model/common_model.dart'
    as _i18;
import 'package:aire_velo_bearings/presentation/change_password/change_password.dart'
    as _i1;
import 'package:aire_velo_bearings/presentation/edit_profile/edit_profile.dart'
    as _i2;
import 'package:aire_velo_bearings/presentation/forgot_password/forgot_password.dart'
    as _i4;
import 'package:aire_velo_bearings/presentation/main/main_tab_view.dart' as _i6;
import 'package:aire_velo_bearings/presentation/main/tabs/favourites/favourites.dart'
    as _i3;
import 'package:aire_velo_bearings/presentation/main/tabs/home/home_view.dart'
    as _i5;
import 'package:aire_velo_bearings/presentation/main/tabs/home/widgets/sub_category_list.dart'
    as _i15;
import 'package:aire_velo_bearings/presentation/main/tabs/my_account/my_account.dart'
    as _i7;
import 'package:aire_velo_bearings/presentation/main/tabs/notification/notification_view.dart'
    as _i8;
import 'package:aire_velo_bearings/presentation/onboarding/onboarding.dart'
    as _i9;
import 'package:aire_velo_bearings/presentation/product_detail/product_detail.dart'
    as _i10;
import 'package:aire_velo_bearings/presentation/search_screen/search_screen.dart'
    as _i11;
import 'package:aire_velo_bearings/presentation/sign_in/sign_in.dart' as _i12;
import 'package:aire_velo_bearings/presentation/sign_up/sign_up.dart' as _i13;
import 'package:aire_velo_bearings/presentation/splash/splash_page.dart'
    as _i14;
import 'package:auto_route/auto_route.dart' as _i16;
import 'package:flutter/material.dart' as _i17;

/// generated route for
/// [_i1.ChangePassword]
class ChangePassword extends _i16.PageRouteInfo<void> {
  const ChangePassword({List<_i16.PageRouteInfo>? children})
      : super(
          ChangePassword.name,
          initialChildren: children,
        );

  static const String name = 'ChangePassword';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i1.ChangePassword();
    },
  );
}

/// generated route for
/// [_i2.EditProfile]
class EditProfile extends _i16.PageRouteInfo<void> {
  const EditProfile({List<_i16.PageRouteInfo>? children})
      : super(
          EditProfile.name,
          initialChildren: children,
        );

  static const String name = 'EditProfile';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i2.EditProfile();
    },
  );
}

/// generated route for
/// [_i3.FavouritesView]
class FavouritesView extends _i16.PageRouteInfo<void> {
  const FavouritesView({List<_i16.PageRouteInfo>? children})
      : super(
          FavouritesView.name,
          initialChildren: children,
        );

  static const String name = 'FavouritesView';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i3.FavouritesView();
    },
  );
}

/// generated route for
/// [_i4.ForgotPassword]
class ForgotPassword extends _i16.PageRouteInfo<void> {
  const ForgotPassword({List<_i16.PageRouteInfo>? children})
      : super(
          ForgotPassword.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPassword';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i4.ForgotPassword();
    },
  );
}

/// generated route for
/// [_i5.HomeView]
class HomeView extends _i16.PageRouteInfo<void> {
  const HomeView({List<_i16.PageRouteInfo>? children})
      : super(
          HomeView.name,
          initialChildren: children,
        );

  static const String name = 'HomeView';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i5.HomeView();
    },
  );
}

/// generated route for
/// [_i6.MainTabView]
class MainTabView extends _i16.PageRouteInfo<void> {
  const MainTabView({List<_i16.PageRouteInfo>? children})
      : super(
          MainTabView.name,
          initialChildren: children,
        );

  static const String name = 'MainTabView';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i6.MainTabView();
    },
  );
}

/// generated route for
/// [_i7.MyAccountView]
class MyAccountView extends _i16.PageRouteInfo<void> {
  const MyAccountView({List<_i16.PageRouteInfo>? children})
      : super(
          MyAccountView.name,
          initialChildren: children,
        );

  static const String name = 'MyAccountView';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i7.MyAccountView();
    },
  );
}

/// generated route for
/// [_i8.NotificationView]
class NotificationView extends _i16.PageRouteInfo<void> {
  const NotificationView({List<_i16.PageRouteInfo>? children})
      : super(
          NotificationView.name,
          initialChildren: children,
        );

  static const String name = 'NotificationView';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i8.NotificationView();
    },
  );
}

/// generated route for
/// [_i9.Onboarding]
class Onboarding extends _i16.PageRouteInfo<void> {
  const Onboarding({List<_i16.PageRouteInfo>? children})
      : super(
          Onboarding.name,
          initialChildren: children,
        );

  static const String name = 'Onboarding';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i9.Onboarding();
    },
  );
}

/// generated route for
/// [_i10.ProductDetail]
class ProductDetail extends _i16.PageRouteInfo<ProductDetailArgs> {
  ProductDetail({
    _i17.Key? key,
    required String title,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          ProductDetail.name,
          args: ProductDetailArgs(
            key: key,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductDetail';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductDetailArgs>();
      return _i10.ProductDetail(
        key: args.key,
        title: args.title,
      );
    },
  );
}

class ProductDetailArgs {
  const ProductDetailArgs({
    this.key,
    required this.title,
  });

  final _i17.Key? key;

  final String title;

  @override
  String toString() {
    return 'ProductDetailArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i11.SearchScreen]
class SearchScreen extends _i16.PageRouteInfo<SearchScreenArgs> {
  SearchScreen({
    _i17.Key? key,
    String? searchText,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          SearchScreen.name,
          args: SearchScreenArgs(
            key: key,
            searchText: searchText,
          ),
          initialChildren: children,
        );

  static const String name = 'SearchScreen';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<SearchScreenArgs>(orElse: () => const SearchScreenArgs());
      return _i11.SearchScreen(
        key: args.key,
        searchText: args.searchText,
      );
    },
  );
}

class SearchScreenArgs {
  const SearchScreenArgs({
    this.key,
    this.searchText,
  });

  final _i17.Key? key;

  final String? searchText;

  @override
  String toString() {
    return 'SearchScreenArgs{key: $key, searchText: $searchText}';
  }
}

/// generated route for
/// [_i12.SignIn]
class SignIn extends _i16.PageRouteInfo<void> {
  const SignIn({List<_i16.PageRouteInfo>? children})
      : super(
          SignIn.name,
          initialChildren: children,
        );

  static const String name = 'SignIn';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i12.SignIn();
    },
  );
}

/// generated route for
/// [_i13.SignUp]
class SignUp extends _i16.PageRouteInfo<void> {
  const SignUp({List<_i16.PageRouteInfo>? children})
      : super(
          SignUp.name,
          initialChildren: children,
        );

  static const String name = 'SignUp';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i13.SignUp();
    },
  );
}

/// generated route for
/// [_i14.SplashPage]
class SplashPage extends _i16.PageRouteInfo<void> {
  const SplashPage({List<_i16.PageRouteInfo>? children})
      : super(
          SplashPage.name,
          initialChildren: children,
        );

  static const String name = 'SplashPage';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i14.SplashPage();
    },
  );
}

/// generated route for
/// [_i15.SubCategoryList]
class SubCategoryList extends _i16.PageRouteInfo<SubCategoryListArgs> {
  SubCategoryList({
    _i17.Key? key,
    required _i18.CommonModel category,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          SubCategoryList.name,
          args: SubCategoryListArgs(
            key: key,
            category: category,
          ),
          initialChildren: children,
        );

  static const String name = 'SubCategoryList';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SubCategoryListArgs>();
      return _i15.SubCategoryList(
        key: args.key,
        category: args.category,
      );
    },
  );
}

class SubCategoryListArgs {
  const SubCategoryListArgs({
    this.key,
    required this.category,
  });

  final _i17.Key? key;

  final _i18.CommonModel category;

  @override
  String toString() {
    return 'SubCategoryListArgs{key: $key, category: $category}';
  }
}
