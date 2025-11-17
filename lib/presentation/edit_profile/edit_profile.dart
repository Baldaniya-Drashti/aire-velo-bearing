import 'package:aire_velo_bearings/application/edit_profile_bloc/edit_profile_bloc.dart';
import 'package:aire_velo_bearings/core/constants/string_constant.dart';
import 'package:aire_velo_bearings/core/utils/math_utils.dart';
import 'package:aire_velo_bearings/injection.dart';
import 'package:aire_velo_bearings/presentation/core/widgets/buttons/common_button.dart';
import 'package:aire_velo_bearings/presentation/core/widgets/inputs/custom_app_bar.dart';
import 'package:aire_velo_bearings/presentation/core/widgets/inputs/custom_text_field.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage(name: 'EditProfile')
class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<EditProfileBloc>(),
      child: BlocBuilder<EditProfileBloc, EditProfileState>(
        builder: (context, state) {
          return Scaffold(
            appBar: CustomAppBar(title: StringConstant.editProfile),
            body: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getSize(20),
                vertical: getSize(30),
              ),
              child: Form(
                autovalidateMode: (state.showError)
                    ? AutovalidateMode.always
                    : AutovalidateMode.disabled,
                child: Column(
                  children: [
                    CustomTextField(
                      labelText: StringConstant.email,
                      onChanged: (value) => context.read<EditProfileBloc>().add(
                        EditProfileEvent.emailChanged(value),
                      ),
                      validator: (p0, p1) => context
                          .read<EditProfileBloc>()
                          .state
                          .email
                          .value
                          .fold(
                            (f) => f.maybeMap(
                              empty: (value) => StringConstant.pleaseEnterEmail,
                              invalidEmail: (_) =>
                                  StringConstant.pleaseEnterValidEmail,
                              orElse: () => null,
                            ),
                            (_) => null,
                          ),
                    ),
                    Spacer(),
                    CommonButton(
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
    );
  }
}
