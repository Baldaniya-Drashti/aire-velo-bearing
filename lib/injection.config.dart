// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:aire_velo_bearings/application/auth_status/auth_status_bloc.dart'
    as _i394;
import 'package:aire_velo_bearings/application/forgot_password_bloc/forgot_password_bloc.dart'
    as _i203;
import 'package:aire_velo_bearings/application/main/main_tab/main_tab_bloc.dart'
    as _i155;
import 'package:aire_velo_bearings/application/product_detail_bloc/product_detail_bloc.dart'
    as _i170;
import 'package:aire_velo_bearings/application/search_bloc/search_bloc.dart'
    as _i53;
import 'package:aire_velo_bearings/application/sign_in_bloc/sign_in_bloc.dart'
    as _i65;
import 'package:aire_velo_bearings/application/sign_up_bloc/sign_up_bloc.dart'
    as _i608;
import 'package:aire_velo_bearings/core/network/api_service.dart' as _i14;
import 'package:aire_velo_bearings/domain/auth/auth_facade.dart' as _i45;
import 'package:aire_velo_bearings/domain/auth/i_auth_facade.dart' as _i575;
import 'package:aire_velo_bearings/domain/main/i_main_facade.dart' as _i6;
import 'package:aire_velo_bearings/domain/main/main_facade.dart' as _i554;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i608.SignUpBloc>(() => _i608.SignUpBloc());
    gh.factory<_i65.SignInBloc>(() => _i65.SignInBloc());
    gh.factory<_i53.SearchBloc>(() => _i53.SearchBloc());
    gh.factory<_i170.ProductDetailBloc>(() => _i170.ProductDetailBloc());
    gh.factory<_i203.ForgotPasswordBloc>(() => _i203.ForgotPasswordBloc());
    gh.lazySingleton<_i14.ApiService>(() => _i14.ApiService());
    gh.lazySingleton<_i6.IMainFacade>(() => _i554.MainFacade());
    gh.lazySingleton<_i575.IAuthFacade>(
        () => _i45.AuthFacade(gh<_i14.ApiService>()));
    gh.factory<_i394.AuthStatusBloc>(
        () => _i394.AuthStatusBloc(gh<_i575.IAuthFacade>()));
    gh.factory<_i155.MainTabBloc>(
        () => _i155.MainTabBloc(gh<_i575.IAuthFacade>()));
    return this;
  }
}
