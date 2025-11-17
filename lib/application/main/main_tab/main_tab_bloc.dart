import 'package:aire_velo_bearings/domain/auth/i_auth_facade.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:aire_velo_bearings/core/router/app_router.gr.dart';
part 'main_tab_state.dart';
part 'main_tab_event.dart';
part 'main_tab_bloc.freezed.dart';

@injectable
class MainTabBloc extends Bloc<MainTabEvent, MainTabState> {
  final List<String> pageList = [HomeView.name];
  final IAuthFacade authFacade;

  MainTabBloc(this.authFacade) : super(MainTabState.initial()) {
    on<MainTabEvent>((event, emit) async {
      await event.map(
        tabChange: (value) async {
          emit(state.copyWith(selectedTab: value.tabIndex));
          switch (value.tabIndex) {
            case 0:
              if (!pageList.contains(state.homePage)) {
                pageList.add(state.homePage);
              }
              emit(state.copyWith(pageIndex: pageList.indexOf(state.homePage)));
              break;
            case 1:
              if (!pageList.contains(state.favouritesPage)) {
                pageList.add(state.favouritesPage);
              }
              emit(
                state.copyWith(
                  pageIndex: pageList.indexOf(state.favouritesPage),
                ),
              );
              break;
            case 2:
              if (!pageList.contains(state.myAccountPage)) {
                pageList.add(state.myAccountPage);
              }
              emit(
                state.copyWith(
                  pageIndex: pageList.indexOf(state.myAccountPage),
                ),
              );
              break;
          }
        },
        registerForPush: (RegisterForPush value) async {
          // await authFacade.registerForPush(fcmToken: value.fcmToken);
        },
        pushNotificationInitialize: (PushNotificationInitialize value) async {
          // await PushNotificationService().setupInteractedMessage(value.context);
          // PushNotificationService().firebaseMessaging.onTokenRefresh.listen((
          //   event,
          // ) {
          //   add(MainTabEvent.registerForPush(event));
          // });
          // await PushNotificationService().firebaseMessaging.getToken().then((
          //   value,
          // ) async {
          //   add(MainTabEvent.registerForPush(value ?? ""));
          // });
        },
        initDynamicLink: (InitDynamicLink value) async {
          // DynamicLinksService.initDynamicLinks(value.context);
          // add(MainTabEvent.pushNotificationInitialize(value.context));
        },
      );
    });
  }
}
