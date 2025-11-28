part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  factory SignUpState({
    required InputEmptyOrNot firstName,
    required InputEmptyOrNot lastName,
    required EmailAddress email,
    required Password password,
    required ConfirmPassword confirmPassword,
    required bool isObscure,
    required bool isSubmitting,
    required bool showError,
  }) = _SignUpState;
  factory SignUpState.initial() => SignUpState(
    isSubmitting: false,
    firstName: InputEmptyOrNot(""),
    lastName: InputEmptyOrNot(""),
    email: EmailAddress(""),
    password: Password(""),
    confirmPassword: ConfirmPassword("", ""),
    showError: false,
    isObscure: true,
  );
}
