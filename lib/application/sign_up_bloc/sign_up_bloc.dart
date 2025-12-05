// ignore_for_file: avoid_print

import 'package:aire_velo_bearings/core/constants/string_constant.dart';
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

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final IAuthFacade _authFacade;
  SignUpBloc(this._authFacade) : super(SignUpState.initial()) {
    on<SignUpEvent>((event, emit) async {
      await event.map(
        firstNameChanged: (e) {
          emit(state.copyWith(firstName: InputEmptyOrNot(e.firstName)));
        },
        lastNameChanged: (e) {
          emit(state.copyWith(lastName: InputEmptyOrNot(e.lastName)));
        },
        emailChanged: (e) {
          emit(state.copyWith(email: EmailAddress(e.email)));
        },
        passwordChanged: (e) {
          emit(state.copyWith(password: Password(e.password)));
          add(
            SignUpEvent.confirmPasswordChanged(
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

          final isFirstNameValid = state.firstName.isValid();
          final isLastNameValid = state.lastName.isValid();
          final isEmailValid = state.email.isValid();
          final isPasswordValid = state.password.isValid();
          final isConfirmPassValid = state.confirmPassword.isValid();

          if (isFirstNameValid &&
              isLastNameValid &&
              isEmailValid &&
              isPasswordValid &&
              isConfirmPassValid) {
            print("All Details Are Valid!");

            emit(state.copyWith(isSubmitting: true));
            failureOrSuccess = await _authFacade.register(
              firstName: state.firstName.getValue() ?? '',
              lastName: state.lastName.getValue() ?? '',
              email: state.email.getValue(),
              password: state.password.getValue(),
              confirmPassword: state.confirmPassword.getValue(),
            );

            final currentContext =
                getIt<AppRouter>().navigatorKey.currentContext!;
            failureOrSuccess.fold(
              (failure) {
                AppFocus.unfocus(currentContext);
                showError(
                  message: failure.maybeMap(
                    showAPIResponseMessage: (value) => value.message,
                    networkError: (value) =>
                        'Please check your internet connectivity',
                    orElse: () => "Server Error. Try again later.",
                  ),
                ).show(currentContext);
              },
              (r) {
                AppFocus.unfocus(currentContext);
                currentContext.router.replaceAll([
                  PageRouteInfo(
                    MainTabView.name,
                    args: MainTabViewArgs(isFromLogin: true),
                  ),
                ], updateExistingRoutes: false);
              },
            );
          } else {
            print(StringConstant.someDetailAreInvalidPleaseCheck);
          }

          emit(state.copyWith(isSubmitting: false, showError: true));
        },
      );
    });
  }
}
