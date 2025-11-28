import 'package:aire_velo_bearings/core/constants/api_constants.dart';
import 'package:aire_velo_bearings/core/database/local_preference.dart';
import 'package:aire_velo_bearings/core/helper/null_reusable_map.dart';
import 'package:aire_velo_bearings/core/network/api_service.dart';
import 'package:aire_velo_bearings/domain/main/i_main_facade.dart';
import 'package:aire_velo_bearings/domain/main/main_failure.dart';
import 'package:aire_velo_bearings/infrastructure/common_response/common_response.dart';
import 'package:aire_velo_bearings/infrastructure/filter_dto/filter_dto.dart';
import 'package:aire_velo_bearings/infrastructure/filter_option_list_dto/filter_option_list_dto.dart';
import 'package:aire_velo_bearings/infrastructure/product_detail_dto/product_detail_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IMainFacade)
class MainFacade implements IMainFacade {
  final ApiService apiService;
  static const int _perPage = 25;

  MainFacade({required this.apiService});

  @override
  Future<Either<MainFailure, CommonResponse>> homeListAPI({
    required int page,
  }) async {
    try {
      Map<String, dynamic> mapData = {'page': page, 'per_page': _perPage};
      final response = await apiService.getMethod(
        ApiConstants.home,
        queryParameters: mapData,
      );

      return right(response);
    } on DioException catch (err) {
      if (err.response != null) {
        var commonRespose = CommonResponse.fromJson(err.response?.data);
        if (commonRespose.dioMessage != null) {
          return left(
            MainFailure.showAPIResponseMessage(commonRespose.dioMessage!),
          );
        }
        return left(MainFailure.showAPIResponseMessage(err.message ?? ''));
      } else if (err.type == DioExceptionType.connectionError) {
        return left(const MainFailure.networkError());
      }

      return left(const MainFailure.serverError());
    }
  }

  @override
  Future<Either<MainFailure, CommonResponse>> subCategoryListAPI({
    required int productId,
    required int page,
  }) async {
    try {
      Map<String, dynamic> mapData = {
        'parent_id': productId,
        'page': page,
        'per_page': _perPage,
      };
      final response = await apiService.getMethod(
        ApiConstants.subCategoryList,
        queryParameters: mapData,
      );

      return right(response);
    } on DioException catch (err) {
      if (err.response != null) {
        var commonRespose = CommonResponse.fromJson(err.response?.data);
        if (commonRespose.dioMessage != null) {
          return left(
            MainFailure.showAPIResponseMessage(commonRespose.dioMessage!),
          );
        }
        return left(MainFailure.showAPIResponseMessage(err.message ?? ''));
      } else if (err.type == DioExceptionType.connectionError) {
        return left(const MainFailure.networkError());
      }

      return left(const MainFailure.serverError());
    }
  }

  @override
  Future<Either<MainFailure, CommonResponse>> filterAPI({
    FilterDTO? filters,
    required int page,
  }) async {
    try {
      Map<dynamic, dynamic> filterMap = filters != null
          ? removeNullAndEmpty(filters.toJson())
          : {};
      Map<String, dynamic> mapData = {
        'page': page,
        'per_page': _perPage,
        ...filterMap,
      };

      print("Sending Data---> $mapData");

      final response = await apiService.getMethod(
        ApiConstants.mainFilter,
        queryParameters: mapData,
      );

      return right(response);
    } on DioException catch (err) {
      if (err.response != null) {
        var commonRespose = CommonResponse.fromJson(err.response?.data);
        if (commonRespose.dioMessage != null) {
          return left(
            MainFailure.showAPIResponseMessage(commonRespose.dioMessage!),
          );
        }
        return left(MainFailure.showAPIResponseMessage(err.message ?? ''));
      } else if (err.type == DioExceptionType.connectionError) {
        return left(const MainFailure.networkError());
      }

      return left(const MainFailure.serverError());
    }
  }

  @override
  Future<Either<MainFailure, ProductDetailDTO>> getProductDetail({
    required int postId,
  }) async {
    try {
      final res = await apiService.getMethod("${ApiConstants.product}/$postId");
      final data = ProductDetailDTO.fromJson(res.data);
      print("Product Detail Response->  $data");
      return right(data);
    } on DioException catch (err) {
      if (err.response != null) {
        var commonRespose = CommonResponse.fromJson(err.response?.data);
        if (commonRespose.dioMessage != null) {
          return left(
            MainFailure.showAPIResponseMessage(commonRespose.dioMessage!),
          );
        }
        return left(MainFailure.showAPIResponseMessage(err.message ?? ''));
      } else if (err.type == DioExceptionType.connectionError) {
        return left(const MainFailure.networkError());
      }

      return left(const MainFailure.serverError());
    }
  }

  @override
  Future<Either<MainFailure, List<FilterOptionListDTO>>> getFilterOptionList({
    String? category,
    required String attribute,
  }) async {
    try {
      Map<String, dynamic> mapData = {
        'attribute': attribute,
        if (category != null && category.isNotEmpty) 'category': category,
      };
      final res = await apiService.getMethod(
        ApiConstants.filterList,
        queryParameters: mapData,
      );

      var account = res.data as List<dynamic>;
      var list = account.map((e) => FilterOptionListDTO.fromJson(e)).toList();
      return right(list);
    } on DioException catch (err) {
      if (err.response != null) {
        var commonRespose = CommonResponse.fromJson(err.response?.data);
        if (commonRespose.dioMessage != null) {
          return left(
            MainFailure.showAPIResponseMessage(commonRespose.dioMessage!),
          );
        }
        return left(MainFailure.showAPIResponseMessage(err.message ?? ''));
      } else if (err.type == DioExceptionType.connectionError) {
        return left(const MainFailure.networkError());
      }

      return left(const MainFailure.serverError());
    }
  }

  @override
  Future<Either<MainFailure, List<FilterOptionListDTO>>>
  getFilterCategoryList() async {
    try {
      final res = await apiService.getMethod(ApiConstants.filterCategories);

      var account = res.data as List<dynamic>;
      var list = account.map((e) => FilterOptionListDTO.fromJson(e)).toList();
      return right(list);
    } on DioException catch (err) {
      if (err.response != null) {
        var commonRespose = CommonResponse.fromJson(err.response?.data);
        if (commonRespose.dioMessage != null) {
          return left(
            MainFailure.showAPIResponseMessage(commonRespose.dioMessage!),
          );
        }
        return left(MainFailure.showAPIResponseMessage(err.message ?? ''));
      } else if (err.type == DioExceptionType.connectionError) {
        return left(const MainFailure.networkError());
      }

      return left(const MainFailure.serverError());
    }
  }

  @override
  Future<Either<MainFailure, CommonResponse>> getFavoritesList({
    required int page,
  }) async {
    try {
      final ids = await getFavouriteIds();

      Map<String, dynamic> mapData = {
        'ids': (ids.isEmpty) ? "" : ids.join(','),
        'page': page,
        'per_page': _perPage,
      };
      final res = await apiService.postMethod(
        ApiConstants.favoriteProducts,
        mapData,
      );

      return right(res);
    } on DioException catch (err) {
      if (err.response != null) {
        var commonRespose = CommonResponse.fromJson(err.response?.data);
        if (commonRespose.dioMessage != null) {
          return left(
            MainFailure.showAPIResponseMessage(commonRespose.dioMessage!),
          );
        }
        return left(MainFailure.showAPIResponseMessage(err.message ?? ''));
      } else if (err.type == DioExceptionType.connectionError) {
        return left(const MainFailure.networkError());
      }

      return left(const MainFailure.serverError());
    }
  }
}
