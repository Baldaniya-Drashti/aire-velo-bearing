import 'package:aire_velo_bearings/application/edit_profile_bloc/edit_profile_bloc.dart';
import 'package:aire_velo_bearings/core/constants/string_constant.dart';
import 'package:aire_velo_bearings/core/utils/math_utils.dart';
import 'package:aire_velo_bearings/injection.dart';
import 'package:aire_velo_bearings/presentation/common/widgets/center_loading_indicator.dart';
import 'package:aire_velo_bearings/presentation/core/widgets/buttons/common_button.dart';
import 'package:aire_velo_bearings/presentation/core/widgets/inputs/custom_app_bar.dart';
import 'package:aire_velo_bearings/presentation/core/widgets/inputs/custom_text_field.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

@RoutePage(name: 'EditProfile')
class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<EditProfileBloc>()..add(EditProfileEvent.getProfileDetail()),
      child: Scaffold(
        appBar: CustomAppBar(title: StringConstant.editProfile),
        body: BlocBuilder<EditProfileBloc, EditProfileState>(
          builder: (context, state) {
            return (state.isLoading)
                ? CenterLoadingIndicator(isOnlyLoader: true)
                : SingleChildScrollView(
                    child: Form(
                      autovalidateMode: (state.showError)
                          ? AutovalidateMode.always
                          : AutovalidateMode.disabled,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: getSize(20),
                          vertical: getSize(30),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomTextField(
                              initialValue: state.firstName.getValue(),
                              labelText: StringConstant.firstName,
                              onChanged: (value) =>
                                  context.read<EditProfileBloc>().add(
                                    EditProfileEvent.firstNameChanged(value),
                                  ),
                              validator: (p0, p1) => context
                                  .read<EditProfileBloc>()
                                  .state
                                  .firstName
                                  .value
                                  .fold(
                                    (f) => f.maybeMap(
                                      empty: (value) =>
                                          StringConstant.pleaseEnterFirstName,
                                      orElse: () => null,
                                    ),
                                    (_) => null,
                                  ),
                            ),
                            CustomTextField(
                              initialValue: state.lastName.getValue(),

                              labelText: StringConstant.lastName,
                              onChanged: (value) => context
                                  .read<EditProfileBloc>()
                                  .add(EditProfileEvent.lastNameChanged(value)),
                              validator: (p0, p1) => context
                                  .read<EditProfileBloc>()
                                  .state
                                  .lastName
                                  .value
                                  .fold(
                                    (f) => f.maybeMap(
                                      empty: (value) =>
                                          StringConstant.pleaseEnterLastName,
                                      orElse: () => null,
                                    ),
                                    (_) => null,
                                  ),
                            ),
                            CustomTextField(
                              initialValue: state.displayName.getValue(),
                              labelText: StringConstant.displayName,
                              onChanged: (value) =>
                                  context.read<EditProfileBloc>().add(
                                    EditProfileEvent.displayNameChanged(value),
                                  ),
                              validator: (p0, p1) => context
                                  .read<EditProfileBloc>()
                                  .state
                                  .displayName
                                  .value
                                  .fold(
                                    (f) => f.maybeMap(
                                      empty: (value) =>
                                          StringConstant.pleaseEnterDisplayName,
                                      orElse: () => null,
                                    ),
                                    (_) => null,
                                  ),
                            ),
                            CustomTextField(
                              initialValue: state.email.getValue(),
                              labelText: StringConstant.email,
                              onChanged: (value) => context
                                  .read<EditProfileBloc>()
                                  .add(EditProfileEvent.emailChanged(value)),
                              validator: (p0, p1) => context
                                  .read<EditProfileBloc>()
                                  .state
                                  .email
                                  .value
                                  .fold(
                                    (f) => f.maybeMap(
                                      empty: (value) =>
                                          StringConstant.pleaseEnterEmail,
                                      invalidEmail: (_) =>
                                          StringConstant.pleaseEnterValidEmail,
                                      orElse: () => null,
                                    ),
                                    (_) => null,
                                  ),
                            ),
                            Gap(getSize(50)),
                            CommonButton(
                              isSubmitting: state.isSubmitting,
                              onPressed: () {
                                context.read<EditProfileBloc>().add(
                                  EditProfileEvent.submitPressed(),
                                );
                              },
                              buttonText: StringConstant.saveChanges,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
          },
        ),
      ),
    );
  }
}
