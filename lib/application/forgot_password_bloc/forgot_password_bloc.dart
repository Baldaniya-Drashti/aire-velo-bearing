import 'package:aire_velo_bearings/core/router/app_router.dart';
import 'package:aire_velo_bearings/domain/auth/auth_failure.dart';
import 'package:aire_velo_bearings/domain/auth/i_auth_facade.dart';
import 'package:aire_velo_bearings/domain/validators/validators.dart';
import 'package:aire_velo_bearings/injection.dart';
import 'package:aire_velo_bearings/presentation/common/utils/app_focus.dart';
import 'package:aire_velo_bearings/presentation/common/utils/flushbar_creator.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'forgot_password_event.dart';
part 'forgot_password_state.dart';
part 'forgot_password_bloc.freezed.dart';

@injectable
class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  final IAuthFacade _authFacade;

  final pageController = PageController();

  ForgotPasswordBloc(this._authFacade) : super(ForgotPasswordState.initial()) {
    on<ForgotPasswordEvent>((event, emit) async {
      await event.map(
        pageChanged: (e) {
          emit(state.copyWith(currentPage: e.page));
        },
        emailChanged: (e) {
          emit(state.copyWith(email: EmailAddress(e.email)));
        },
        passwordChanged: (e) {
          emit(state.copyWith(password: Password(e.password)));
          add(
            ForgotPasswordEvent.confirmPasswordChanged(
              state.confirmPassword.getValue(),
              e.password,
            ),
          );
        },
        confirmPasswordChanged: (e) {
          emit(
            state.copyWith(
              confirmPassword: ConfirmPassword(
                e.confirmPassword,
                state.password.getValue(),
              ),
            ),
          );
        },
        obscureChanged: (e) {
          emit(state.copyWith(isObscure: !state.isObscure));
        },
        submitPressed: (e) async {
          Either<AuthFailure, String>? failureOrSuccess;

          final isEmailValid = state.email.isValid();

          if (isEmailValid) {
            emit(state.copyWith(isSubmitting: true));

            failureOrSuccess = await _authFacade.forgotPasswordAPI(
              email: state.email.getValue(),
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
              },
              (r) {
                AppFocus.unfocus(currentContext);
              },
            );
          }
          emit(state.copyWith(isSubmitting: false, showError: true));
        },
      );
    });
  }
}
