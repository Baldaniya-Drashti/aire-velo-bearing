import 'package:aire_velo_bearings/core/constants/string_constant.dart';
import 'package:aire_velo_bearings/domain/validators/validators.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'edit_profile_event.dart';
part 'edit_profile_state.dart';
part 'edit_profile_bloc.freezed.dart';

@injectable
class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {
  EditProfileBloc() : super(EditProfileState.initial()) {
    on<EditProfileEvent>((event, emit) {
      event.map(
        emailChanged: (e) {
          emit(state.copyWith(email: EmailAddress(e.email)));
        },
        submitPressed: (e) {
          final isEmailValid = state.email.isValid();

          if (isEmailValid) {
            print("All Details Are Valid!");
          } else {
            print(StringConstant.someDetailAreInvalidPleaseCheck);
          }
          emit(state.copyWith(isSubmitting: false, showError: true));
        },
      );
    });
  }
}
