import 'package:aire_velo_bearings/core/constants/string_constant.dart';
import 'package:aire_velo_bearings/domain/validators/validators.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(SignInState.initial()) {
    on<SignInEvent>((event, emit) {
      event.map(
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
        loginPressed: (e) {
          final isEmailValid = state.email.isValid();
          final isPasswordValid = state.password.isValid();

          if (isEmailValid && isPasswordValid) {
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
