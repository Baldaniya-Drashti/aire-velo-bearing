part of 'change_password_bloc.dart';

@freezed
class ChangePasswordState with _$ChangePasswordState {
  factory ChangePasswordState({
    required Password password,
    required ConfirmPassword confirmPassword,
    required bool isObscure,
    required bool isSubmitting,
    required bool showError,
  }) = _ChangePasswordState;
  factory ChangePasswordState.initial() => ChangePasswordState(
    isSubmitting: false,
    password: Password(""),
    confirmPassword: ConfirmPassword("", ""),
    showError: false,
    isObscure: false,
  );
}
