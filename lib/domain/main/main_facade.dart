import 'package:aire_velo_bearings/core/constants/api_constants.dart';
import 'package:aire_velo_bearings/core/network/api_service.dart';
import 'package:aire_velo_bearings/domain/main/i_main_facade.dart';
import 'package:aire_velo_bearings/domain/main/main_failure.dart';
import 'package:aire_velo_bearings/infrastructure/common_response/common_response.dart';
import 'package:aire_velo_bearings/infrastructure/home_dto/home_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IMainFacade)
class MainFacade implements IMainFacade {
  final ApiService apiService;
  static const int _perPage = 25;

  MainFacade({required this.apiService});

  @override
  Future<Either<MainFailure, List<HomeDTO>>> homeListAPI({
    required int page,
  }) async {
    try {
      Map<String, dynamic> mapData = {'page': page, 'per_page': _perPage};
      final response = await apiService.getMethod(
        ApiConstants.home,
        queryParameters: mapData,
      );

      var account = response.data as List<dynamic>;
      var list = account.map((e) => HomeDTO.fromJson(e)).toList();

      print("Home List Response---> $list");
      return right(list);
    } on DioException catch (err) {
      if (err.response != null) {
        var commonRespose = CommonResponse.fromJson(err.response?.data);

        if (commonRespose.dioMessage != null) {
          return left(
            MainFailure.showAPIResponseMessage(commonRespose.dioMessage!),
          );
        }
      } else if (err.type == DioExceptionType.connectionError) {
        return left(const MainFailure.networkError());
      }

      return left(const MainFailure.serverError());
    }
  }
}
