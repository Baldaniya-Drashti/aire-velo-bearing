part of 'edit_profile_bloc.dart';

@freezed
class EditProfileState with _$EditProfileState {
  factory EditProfileState({
    required EmailAddress email,
    required InputEmptyOrNot firstName,
    required InputEmptyOrNot lastName,
    required InputEmptyOrNot displayName,
    required bool isSubmitting,
    required bool isLoading,
    required bool showError,
  }) = _EditProfileState;
  factory EditProfileState.initial() => EditProfileState(
    email: EmailAddress(""),
    firstName: InputEmptyOrNot(""),
    lastName: InputEmptyOrNot(""),
    displayName: InputEmptyOrNot(""),
    isSubmitting: false,
    isLoading: false,
    showError: false,
  );
}
