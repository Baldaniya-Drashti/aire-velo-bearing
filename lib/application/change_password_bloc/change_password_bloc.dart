import 'package:aire_velo_bearings/core/constants/string_constant.dart';
import 'package:aire_velo_bearings/domain/validators/validators.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'change_password_event.dart';
part 'change_password_state.dart';
part 'change_password_bloc.freezed.dart';

@injectable
class ChangePasswordBloc
    extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  ChangePasswordBloc() : super(ChangePasswordState.initial()) {
    on<ChangePasswordEvent>((event, emit) {
      event.map(
        passwordChanged: (e) {
          emit(state.copyWith(password: Password(e.password)));
          add(
            ChangePasswordEvent.confirmPasswordChanged(
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
          final isPasswordValid = state.password.isValid();
          final isConfirmPassValid = state.confirmPassword.isValid();

          if (isPasswordValid && isConfirmPassValid) {
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
