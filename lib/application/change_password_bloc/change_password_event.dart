part of 'change_password_bloc.dart';

@freezed
class ChangePasswordEvent with _$ChangePasswordEvent {
  const factory ChangePasswordEvent.passwordChanged(String password) =
      PasswordChanged;
  const factory ChangePasswordEvent.confirmPasswordChanged(
    String confirmPassword,
    String password,
  ) = ConfirmPasswordChanged;
  const factory ChangePasswordEvent.obscureChanged() = ObscureChanged;
  const factory ChangePasswordEvent.submitPressed() = SubmitPressed;
}
