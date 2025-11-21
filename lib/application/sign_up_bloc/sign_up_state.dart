part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  factory SignUpState({
    required EmailAddress email,
    required Password password,
    required ConfirmPassword confirmPassword,
    required bool isObscure,
    required bool isSubmitting,
    required bool showError,
  }) = _SignUpState;
  factory SignUpState.initial() => SignUpState(
    isSubmitting: false,
    email: EmailAddress(""),
    password: Password(""),
    confirmPassword: ConfirmPassword("", ""),
    showError: false,
    isObscure: true,
  );
}
