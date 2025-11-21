part of 'change_password_bloc.dart';

@freezed
class ChangePasswordState with _$ChangePasswordState {
  factory ChangePasswordState({
    required Password currentPass,
    required Password newPass,
    required ConfirmPassword confirmPass,
    required bool isObscure,
    required bool isNewObscure,
    required bool isSubmitting,
    required bool showError,
  }) = _ChangePasswordState;
  factory ChangePasswordState.initial() => ChangePasswordState(
    isSubmitting: false,
    currentPass: Password(""),
    newPass: Password(""),
    confirmPass: ConfirmPassword("", ""),
    showError: false,
    isObscure: true,
    isNewObscure: true,
  );
}
