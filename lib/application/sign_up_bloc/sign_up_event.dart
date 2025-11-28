part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.emailChanged(String email) = EmailChanged;
  const factory SignUpEvent.firstNameChanged(String firstName) =
      FirstNameChanged;
  const factory SignUpEvent.lastNameChanged(String lastName) = LastNameChanged;
  const factory SignUpEvent.passwordChanged(String password) = PasswordChanged;
  const factory SignUpEvent.confirmPasswordChanged(
    String confirmPassword,
    String password,
  ) = ConfirmPasswordChanged;
  const factory SignUpEvent.obscureChanged() = ObscureChanged;
  const factory SignUpEvent.submitPressed() = SubmitPressed;
}
