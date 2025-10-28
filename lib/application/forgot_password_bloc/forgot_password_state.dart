part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  factory ForgotPasswordState({
    required int currentPage,
    required EmailAddress email,
    required OTPText otp,
    required Password password,
    required ConfirmPassword confirmPassword,
    required bool isObscure,
    required bool isSubmitting,
    required bool showError,
  }) = _ForgotPasswordState;
  factory ForgotPasswordState.initial() => ForgotPasswordState(
    currentPage: 0,
    otp: OTPText(""),
    email: EmailAddress(""),
    password: Password(""),
    confirmPassword: ConfirmPassword("", ""),
    isObscure: false,
    isSubmitting: false,
    showError: false,
  );
}
