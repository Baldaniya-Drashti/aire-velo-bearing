part of 'change_password_bloc.dart';

@freezed
class ChangePasswordEvent with _$ChangePasswordEvent {
  const factory ChangePasswordEvent.currentPassChanged(String password) =
      CurrenPassChanged;
  const factory ChangePasswordEvent.newPassChanged(String newPass) =
      NewPassChanged;
  const factory ChangePasswordEvent.confirmPassChanged(
    String confirmPass,
    String newPass,
  ) = ConfirmPasswordChanged;
  const factory ChangePasswordEvent.obscureChanged() = ObscureChanged;
  const factory ChangePasswordEvent.newObscureChanged() = NewObscureChanged;
  const factory ChangePasswordEvent.submitPressed() = SubmitPressed;
}
