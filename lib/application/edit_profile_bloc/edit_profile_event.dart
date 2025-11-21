part of 'edit_profile_bloc.dart';

@freezed
class EditProfileEvent with _$EditProfileEvent {
  const factory EditProfileEvent.getProfileDetail() = GetProfileDetail;
  const factory EditProfileEvent.emailChanged(String email) = EmailChanged;
  const factory EditProfileEvent.firstNameChanged(String firstName) =
      FirstNameChanged;
  const factory EditProfileEvent.lastNameChanged(String lastName) =
      LastNameChanged;
  const factory EditProfileEvent.displayNameChanged(String displayName) =
      DisplayNameChanged;
  const factory EditProfileEvent.submitPressed() = SubmitPressed;
}
