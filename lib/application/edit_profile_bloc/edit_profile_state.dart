part of 'edit_profile_bloc.dart';

@freezed
class EditProfileState with _$EditProfileState {
  factory EditProfileState({
    required EmailAddress email,
    required bool isSubmitting,
    required bool showError,
  }) = _EditProfileState;
  factory EditProfileState.initial() => EditProfileState(
    email: EmailAddress(""),
    isSubmitting: false,
    showError: false,
  );
}
