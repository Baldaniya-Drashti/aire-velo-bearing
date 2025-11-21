import 'package:aire_velo_bearings/domain/main/main_failure.dart';
import 'package:aire_velo_bearings/infrastructure/common_response/common_response.dart';
import 'package:aire_velo_bearings/infrastructure/filter_dto/filter_dto.dart';
import 'package:aire_velo_bearings/infrastructure/filter_option_list_dto/filter_option_list_dto.dart';
import 'package:aire_velo_bearings/infrastructure/product_detail_dto/product_detail_dto.dart';
import 'package:dartz/dartz.dart';

abstract class IMainFacade {
  Future<Either<MainFailure, CommonResponse>> homeListAPI({required int page});
  Future<Either<MainFailure, CommonResponse>> subCategoryListAPI({
    required int productId,
    required int page,
  });
  Future<Either<MainFailure, CommonResponse>> filterAPI({
    FilterDTO? filters,
    required int page,
  });
  Future<Either<MainFailure, ProductDetailDTO>> getProductDetail({
    required int postId,
  });
  Future<Either<MainFailure, List<FilterOptionListDTO>>> getFilterOptionList({
    String? category,
    required String attribute,
  });

  Future<Either<MainFailure, List<FilterOptionListDTO>>>
  getFilterCategoryList();

  Future<Either<MainFailure, CommonResponse>> getFavoritesList({
    required int page,
  });
}
