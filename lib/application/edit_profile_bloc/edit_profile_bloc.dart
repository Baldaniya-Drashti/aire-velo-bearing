import 'dart:convert';

import 'package:aire_velo_bearings/core/constants/string_constant.dart';
import 'package:aire_velo_bearings/core/database/local_preference.dart';
import 'package:aire_velo_bearings/core/router/app_router.dart';
import 'package:aire_velo_bearings/domain/auth/auth_failure.dart';
import 'package:aire_velo_bearings/domain/auth/i_auth_facade.dart';
import 'package:aire_velo_bearings/domain/validators/validators.dart';
import 'package:aire_velo_bearings/injection.dart';
import 'package:aire_velo_bearings/presentation/common/utils/app_focus.dart';
import 'package:aire_velo_bearings/presentation/common/utils/flushbar_creator.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'edit_profile_event.dart';
part 'edit_profile_state.dart';
part 'edit_profile_bloc.freezed.dart';

@injectable
class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {
  final IAuthFacade _authFacade;

  EditProfileBloc(this._authFacade) : super(EditProfileState.initial()) {
    on<EditProfileEvent>((event, emit) async {
      await event.map(
        getProfileDetail: (e) async {
          emit(state.copyWith(isLoading: true));
          final user = await getUserData();

          await Future.delayed(Duration(seconds: 1));

          print("user----> ${jsonEncode(user)}");
          emit(
            state.copyWith(
              email: EmailAddress(user.email ?? ''),
              firstName: InputEmptyOrNot(user.firstName ?? ''),
              lastName: InputEmptyOrNot(user.lastName ?? ''),
              displayName: InputEmptyOrNot(user.displayname ?? ''),
              isLoading: false,
            ),
          );
        },
        firstNameChanged: (e) {
          emit(state.copyWith(firstName: InputEmptyOrNot(e.firstName)));
        },
        lastNameChanged: (e) {
          emit(state.copyWith(lastName: InputEmptyOrNot(e.lastName)));
        },
        displayNameChanged: (e) {
          emit(state.copyWith(displayName: InputEmptyOrNot(e.displayName)));
        },
        emailChanged: (e) {
          emit(state.copyWith(email: EmailAddress(e.email)));
        },
        submitPressed: (e) async {
          Either<AuthFailure, String>? failureOrSuccess;

          final isEmailValid = state.email.isValid();
          final isFirstNameValid = state.firstName.isValid();
          final isLastNameValid = state.lastName.isValid();
          final isDisplayNameValid = state.displayName.isValid();

          if (isEmailValid &&
              isFirstNameValid &&
              isLastNameValid &&
              isDisplayNameValid) {
            emit(state.copyWith(isSubmitting: true));

            failureOrSuccess = await _authFacade.editProfile(
              email: state.email.getValue(),
              firstName: state.firstName.getValue() ?? '',
              lastName: state.lastName.getValue() ?? '',
              displayName: state.displayName.getValue() ?? '',
            );

            final currentContext =
                getIt<AppRouter>().navigatorKey.currentContext!;
            failureOrSuccess.fold(
              (l) {
                AppFocus.unfocus(currentContext);
                showError(
                  message: l.maybeMap(
                    showAPIResponseMessage: (value) => value.message,
                    networkError: (value) =>
                        'Please check your internet connectivity',
                    orElse: () => "Server Error. Try again later.",
                  ),
                ).show(currentContext);
              },
              (r) {
                AppFocus.unfocus(currentContext);
                currentContext.router.maybePop(true);
              },
            );
          } else {
            print(StringConstant.someDetailAreInvalidPleaseCheck);
          }
          emit(state.copyWith(isSubmitting: false, showError: true));
        },
      );
    });
  }
}
