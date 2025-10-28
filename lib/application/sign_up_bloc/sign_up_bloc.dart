// ignore_for_file: avoid_print

import 'package:aire_velo_bearings/core/constants/string_constant.dart';
import 'package:aire_velo_bearings/domain/validators/validators.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(SignUpState.initial()) {
    on<SignUpEvent>((event, emit) {
      event.map(
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
        submitPressed: (e) {
          final isEmailValid = state.email.isValid();
          final isPasswordValid = state.password.isValid();
          final isConfirmPassValid = state.confirmPassword.isValid();

          if (isEmailValid && isPasswordValid && isConfirmPassValid) {
            print("All Details Are Valid!");
          } else {
            print(StringConstant.someDetailAreInvalidPleaseCheck);
          }
          emit(state.copyWith(isSubmitting: false, showError: true));
        },
      );
    });
  }
}
