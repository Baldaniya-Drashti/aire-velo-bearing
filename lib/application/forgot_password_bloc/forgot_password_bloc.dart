import 'package:aire_velo_bearings/domain/validators/validators.dart';
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
  final pageController = PageController();

  ForgotPasswordBloc() : super(ForgotPasswordState.initial()) {
    on<ForgotPasswordEvent>((event, emit) {
      event.map(
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
        submitPressed: (e) {},
      );
    });
  }
}
