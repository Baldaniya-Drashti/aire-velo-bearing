import 'package:aire_velo_bearings/domain/main/main_failure.dart';
import 'package:aire_velo_bearings/infrastructure/home_dto/home_dto.dart';
import 'package:dartz/dartz.dart';

abstract class IMainFacade {
  Future<Either<MainFailure, List<HomeDTO>>> homeListAPI({required int page});
}
