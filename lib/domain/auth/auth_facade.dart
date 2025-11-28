import 'dart:convert';
import 'package:aire_velo_bearings/core/constants/api_constants.dart';
import 'package:aire_velo_bearings/core/network/api_service.dart';
import 'package:aire_velo_bearings/domain/auth/auth_failure.dart';
import 'package:aire_velo_bearings/domain/auth/i_auth_facade.dart';
import 'package:aire_velo_bearings/core/database/local_preference.dart';
import 'package:aire_velo_bearings/infrastructure/common_response/common_response.dart';
import 'package:aire_velo_bearings/infrastructure/current_user/current_user_response.dart';
import 'package:aire_velo_bearings/infrastructure/remember_dto/remember_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthFacade)
class AuthFacade implements IAuthFacade {
  final ApiService apiService;

  AuthFacade(this.apiService);

  @override
  Future<bool> checkAuthenticated() async {
    final token = await getToken();
    return token.isNotEmpty;
  }

  @override
  Future<Either<AuthFailure, String>> register({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    try {
      var mapData = {
        "email": email,
        "password": password,
        'first_name': firstName,
        'last_name': lastName,
      };

      print("Sending data---> ${jsonEncode(mapData)}");

      final response = await apiService.postMethod(
        ApiConstants.register,
        mapData,
      );

      print("RESPONSE OF REGISTER---> ${response.data}");

      final account = CurrentUserDTO.fromJson(response.data);
      await setToken(account.token ?? "");
      await setUserData(account);
      // setCurrentUser(account);
      return right(response.dioMessage ?? "");
    } on DioException catch (err) {
      if (err.response != null) {
        var commonRespose = CommonResponse.fromJson(err.response?.data);
        if (commonRespose.dioMessage != null) {
          return left(
            AuthFailure.showAPIResponseMessage(commonRespose.dioMessage!),
          );
        }
        return left(AuthFailure.showAPIResponseMessage(err.message ?? ''));
      } else if (err.type == DioExceptionType.connectionError) {
        return left(const AuthFailure.networkError());
      }

      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, String>> login({
    required String email,
    required String password,
    required bool isRemember,
  }) async {
    try {
      final response = await apiService.postMethod(ApiConstants.login, {
        "email": email,
        "password": password,
      });

      final account = CurrentUserDTO.fromJson(response.data);
      // logger.d("RESPONSE OF LOGIN---> ${response.data}");
      await setRememberLogin(
        cred: RememberDTO(
          isRemember: isRemember ? 1 : 0,
          email: email,
          password: password,
        ),
      );

      print("account.token ---> ${account.token}");
      await setToken(account.token ?? "");
      await setUserData(account);
      return right(response.dioMessage ?? "");
    } on DioException catch (err) {
      if (err.response != null) {
        var commonRespose = CommonResponse.fromJson(err.response?.data);
        if (commonRespose.dioMessage != null) {
          return left(
            AuthFailure.showAPIResponseMessage(commonRespose.dioMessage!),
          );
        }
        return left(AuthFailure.showAPIResponseMessage(err.message ?? ''));
      } else if (err.type == DioExceptionType.connectionError) {
        return left(const AuthFailure.networkError());
      }

      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, String>> logout() async {
    try {
      return apiService.getMethod(ApiConstants.logout).then((value) async {
        final rememberUser = await getRememberLogin();

        clearLocalStorage();
        await setRememberLogin(cred: rememberUser);

        return right(value.dioMessage ?? "");
      });
    } on DioException catch (err) {
      if (err.response != null) {
        return left(AuthFailure.showAPIResponseMessage(err.message ?? ''));
      }

      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, String>> editProfile({
    required String firstName,
    required String lastName,
    required String displayName,
    required String email,
  }) async {
    try {
      final response = await apiService.postMethod(ApiConstants.editProfile, {
        "first_name": firstName,
        "last_name": lastName,
        "display_name": displayName,
        "email": email,
      });

      return right(response.dioMessage ?? "");
    } on DioException catch (err) {
      if (err.response != null) {
        var commonRespose = CommonResponse.fromJson(err.response?.data);
        if (commonRespose.dioMessage != null) {
          return left(
            AuthFailure.showAPIResponseMessage(commonRespose.dioMessage!),
          );
        }
        return left(AuthFailure.showAPIResponseMessage(err.message ?? ''));
      } else if (err.type == DioExceptionType.connectionError) {
        return left(const AuthFailure.networkError());
      }

      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, String>> getCurrentUser() async {
    try {
      final response = await apiService.getMethod(ApiConstants.getUserDetail);

      final account = CurrentUserDTO.fromJson(response.data);

      await setUserData(account);
      return right(response.dioMessage ?? "");
    } on DioException catch (err) {
      if (err.response != null) {
        var commonRespose = CommonResponse.fromJson(err.response?.data);
        if (commonRespose.dioMessage != null) {
          return left(
            AuthFailure.showAPIResponseMessage(commonRespose.dioMessage!),
          );
        }
        return left(AuthFailure.showAPIResponseMessage(err.message ?? ''));
      } else if (err.type == DioExceptionType.connectionError) {
        return left(const AuthFailure.networkError());
      }

      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, String>> changePasswordAPI({
    required String currentPass,
    required String newPass,
    required String confirmPass,
  }) async {
    final remeberLogin = await getRememberLogin();
    try {
      Map<String, dynamic> mapData = {
        'current_password': currentPass,
        'new_password': newPass,
        'confirm_password': confirmPass,
      };

      final response = await apiService.postMethod(
        ApiConstants.changePassword,
        mapData,
      );

      if (remeberLogin.isRemember == 1) {
        await setRememberLogin(
          cred: RememberDTO(
            isRemember: remeberLogin.isRemember,
            email: remeberLogin.email,
            password: newPass,
          ),
        );
      }
      return right(response.dioMessage ?? "");
    } on DioException catch (err) {
      if (err.response != null) {
        var commonRespose = CommonResponse.fromJson(err.response?.data);
        if (commonRespose.dioMessage != null) {
          return left(
            AuthFailure.showAPIResponseMessage(commonRespose.dioMessage!),
          );
        }
        return left(AuthFailure.showAPIResponseMessage(err.message ?? ''));
      } else if (err.type == DioExceptionType.connectionError) {
        return left(const AuthFailure.networkError());
      }

      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, String>> forgotPasswordAPI({
    required String email,
  }) async {
    try {
      Map<String, dynamic> mapData = {'email': email};

      final response = await apiService.postMethod(
        ApiConstants.forgotPassword,
        mapData,
      );

      return right(response.dioMessage ?? "");
    } on DioException catch (err) {
      if (err.response != null) {
        var commonRespose = CommonResponse.fromJson(err.response?.data);
        if (commonRespose.dioMessage != null) {
          return left(
            AuthFailure.showAPIResponseMessage(commonRespose.dioMessage!),
          );
        }
        return left(AuthFailure.showAPIResponseMessage(err.message ?? ''));
      } else if (err.type == DioExceptionType.connectionError) {
        return left(const AuthFailure.networkError());
      }

      return left(const AuthFailure.serverError());
    }
  }
}
