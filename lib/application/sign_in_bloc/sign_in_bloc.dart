import 'package:aire_velo_bearings/core/database/local_preference.dart';
import 'package:aire_velo_bearings/core/router/app_router.dart';
import 'package:aire_velo_bearings/core/router/app_router.gr.dart';
import 'package:aire_velo_bearings/domain/auth/auth_failure.dart';
import 'package:aire_velo_bearings/domain/auth/i_auth_facade.dart';
import 'package:aire_velo_bearings/domain/validators/validators.dart';
import 'package:aire_velo_bearings/injection.dart';
import 'package:aire_velo_bearings/presentation/common/utils/app_focus.dart';
import 'package:aire_velo_bearings/presentation/common/utils/flushbar_creator.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final IAuthFacade _authFacade;

  SignInBloc(this._authFacade) : super(SignInState.initial()) {
    on<SignInEvent>((event, emit) async {
      await event.map(
        getLoginCredential: (e) async {
          emit(state.copyWith(isLoading: true));
          final user = await getRememberLogin();
          await Future.delayed(Duration(seconds: 2));
          emit(
            state.copyWith(
              isLoading: false,
              email: EmailAddress(user.email ?? ''),
              password: Password(user.password ?? ''),
              rememberMe: user.isRemember == 1 ? true : false,
            ),
          );
        },
        emailChanged: (e) {
          emit(state.copyWith(email: EmailAddress(e.email)));
        },
        passwordChanged: (e) {
          emit(state.copyWith(password: Password(e.password)));
        },
        obscureChanged: (e) {
          emit(state.copyWith(isObscure: !state.isObscure));
        },
        rememberMeEvent: (e) {
          emit(state.copyWith(rememberMe: !state.rememberMe));
        },
        loginPressed: (e) async {
          Either<AuthFailure, String>? failureOrSuccess;

          final isEmailValid = state.email.isValid();
          final isPasswordValid = state.password.isValid();

          if (isEmailValid && isPasswordValid) {
            emit(state.copyWith(isSubmitting: true));

            failureOrSuccess = await _authFacade.login(
              email: state.email.getValue(),
              password: state.password.getValue(),
              isRemember: state.rememberMe,
            );

            final currentContext =
                getIt<AppRouter>().navigatorKey.currentContext!;
            failureOrSuccess.fold(
              (l) {
                AppFocus.unfocus(currentContext);
                showError(
                  message: l.maybeMap(
                    showAPIResponseMessage: (value) => value.message,
                    networkError: (value) =>
                        'Please check your internet connectivity',
                    orElse: () => "Server Error. Try again later.",
                  ),
                ).show(currentContext);
                emit(state.copyWith(isSubmitting: false, showError: true));
              },
              (r) {
                AppFocus.unfocus(currentContext);
                currentContext.router.replaceAll([
                  PageRouteInfo(
                    MainTabView.name,
                    args: MainTabViewArgs(isFromLogin: true),
                  ),
                ], updateExistingRoutes: false);
                emit(state.copyWith(isSubmitting: false, showError: true));
              },
            );
          }
        },
      );
    });
  }
}
