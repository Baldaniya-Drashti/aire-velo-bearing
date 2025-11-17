import 'package:aire_velo_bearings/domain/main/i_main_facade.dart';
import 'package:aire_velo_bearings/domain/main/main_failure.dart';
import 'package:aire_velo_bearings/infrastructure/home_dto/home_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IMainFacade mainFacade;
  int page = 1;
  int lastPage = 1;
  final RefreshController refreshController = RefreshController();
  HomeBloc(this.mainFacade) : super(HomeState.initial()) {
    on<HomeEvent>((event, emit) async {
      await event.map(
        getProductList: (e) async {
          Either<MainFailure, List<HomeDTO>>? failureOrSuccess;
          emit(state.copyWith(isLoading: true));
          failureOrSuccess = await mainFacade.homeListAPI(page: page);

          failureOrSuccess.fold((l) => emit(state.copyWith(isLoading: false)), (
            r,
          ) {
            print("Home List API success---> $r");
            emit(state.copyWith(isLoading: false, productList: r));
          });
        },
      );
    });
  }
}
