import 'package:aire_velo_bearings/domain/auth/i_auth_facade.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'auth_status_event.dart';
part 'auth_status_state.dart';
part 'auth_status_bloc.freezed.dart';

@injectable
class AuthStatusBloc extends Bloc<AuthStatusEvent, AuthStatusState> {
  final IAuthFacade _authFacade;

  AuthStatusBloc(this._authFacade) : super(const AuthStatusState.initial()) {
    on<AuthStatusEvent>((event, emit) async {
      await event.map(
        started: (e) async {
          /* final authenticated = true;
          emit(
            authenticated
                ? const AuthStatusState.authenticated()
                : const AuthStatusState.unAuthenticated(''),
          ); */
        },
        authCheckRequested: (e) async {
          final authenticated = await _authFacade.checkAuthenticated();
          // final isShowIntroScreen = isUserShowIntro();
          /*  if (isShowIntroScreen == null) {
            emit(const AuthStatusState.introScreenVisibilty());
          } else { */
          emit(
            authenticated
                ? const AuthStatusState.authenticated()
                : const AuthStatusState.unAuthenticated(''),
          );
          // }
        },
        signedOut: (e) async {
          /* var res = await _authFacade.logout();
          res.fold(
            (l) => null,
            (r) => emit(AuthStatusState.unauthenticated(r)),
          ); */
          emit(AuthStatusState.unAuthenticated("Successfully logged out!"));
        },
      );
    });
  }
}
