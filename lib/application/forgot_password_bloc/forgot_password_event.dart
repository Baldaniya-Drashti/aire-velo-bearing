part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordEvent with _$ForgotPasswordEvent {
  const factory ForgotPasswordEvent.pageChanged(int page) = PageChanged;
  const factory ForgotPasswordEvent.emailChanged(String email) = EmailChanged;
  const factory ForgotPasswordEvent.passwordChanged(String password) =
      PasswordChanged;
  const factory ForgotPasswordEvent.confirmPasswordChanged(
    String confirmPassword,
    String password,
  ) = ConfirmPasswordChanged;
  const factory ForgotPasswordEvent.obscureChanged() = ObscureChanged;
  const factory ForgotPasswordEvent.submitPressed() = SubmitPressed;
}
