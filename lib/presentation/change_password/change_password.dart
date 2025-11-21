import 'package:aire_velo_bearings/application/change_password_bloc/change_password_bloc.dart';
import 'package:aire_velo_bearings/core/constants/string_constant.dart';
import 'package:aire_velo_bearings/core/utils/math_utils.dart';
import 'package:aire_velo_bearings/injection.dart';
import 'package:aire_velo_bearings/presentation/core/styles/app_colors.dart';
import 'package:aire_velo_bearings/presentation/core/widgets/buttons/common_button.dart';
import 'package:aire_velo_bearings/presentation/core/widgets/inputs/custom_text_field.dart';
import 'package:aire_velo_bearings/presentation/core/widgets/layout/layout.dart';
import 'package:aire_velo_bearings/presentation/core/widgets/layout/unfocus.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

@RoutePage(name: 'ChangePassword')
class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ChangePasswordBloc>(),
      child: BlocBuilder<ChangePasswordBloc, ChangePasswordState>(
        builder: (context, state) {
          return Scaffold(
            appBar: CustomAppBar(title: StringConstant.changePassword),
            body: CustomUnFocus(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getSize(20),
                  vertical: getSize(30),
                ),
                child: SingleChildScrollView(
                  child: Form(
                    autovalidateMode: (state.showError)
                        ? AutovalidateMode.always
                        : AutovalidateMode.disabled,
                    child: Column(
                      children: [
                        CustomTextField(
                          labelText: StringConstant.password,
                          obscureText: state.isObscure,
                          suffixIcon: InkWell(
                            onTap: () {
                              context.read<ChangePasswordBloc>().add(
                                const ChangePasswordEvent.obscureChanged(),
                              );
                            },
                            child: Container(
                              color: AppColors.transparent,
                              padding: EdgeInsets.all(getSize(9)),
                              child: Icon(
                                (state.isObscure)
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                              ),
                            ),
                          ),
                          onChanged: (value) =>
                              context.read<ChangePasswordBloc>().add(
                                ChangePasswordEvent.currentPassChanged(value),
                              ),
                          validator: (p0, p1) => context
                              .read<ChangePasswordBloc>()
                              .state
                              .currentPass
                              .value
                              .fold(
                                (f) => f.maybeMap(
                                  empty: (value) =>
                                      StringConstant.pleaseEnterPassword,
                                  shortPassword: (_) => StringConstant
                                      .passwordShouldBeMinimum8Digit,
                                  orElse: () => null,
                                ),
                                (_) => null,
                              ),
                        ),
                        Gap(getSize(20)),
                        CustomTextField(
                          labelText: StringConstant.newPassword,
                          obscureText: state.isNewObscure,
                          suffixIcon: InkWell(
                            onTap: () {
                              context.read<ChangePasswordBloc>().add(
                                const ChangePasswordEvent.newObscureChanged(),
                              );
                            },
                            child: Container(
                              color: AppColors.transparent,
                              padding: EdgeInsets.all(getSize(9)),
                              child: Icon(
                                (state.isNewObscure)
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                              ),
                            ),
                          ),
                          onChanged: (value) => context
                              .read<ChangePasswordBloc>()
                              .add(ChangePasswordEvent.newPassChanged(value)),
                          validator: (p0, p1) => context
                              .read<ChangePasswordBloc>()
                              .state
                              .newPass
                              .value
                              .fold(
                                (f) => f.maybeMap(
                                  empty: (value) =>
                                      StringConstant.pleaseEnterNewPassword,
                                  shortPassword: (_) => StringConstant
                                      .passwordShouldBeMinimum8Digit,
                                  orElse: () => null,
                                ),
                                (_) => null,
                              ),
                        ),
                        Gap(getSize(20)),
                        CustomTextField(
                          labelText: StringConstant.confirmPassword,
                          obscureText: state.isNewObscure,
                          suffixIcon: InkWell(
                            onTap: () {
                              context.read<ChangePasswordBloc>().add(
                                const ChangePasswordEvent.newObscureChanged(),
                              );
                            },
                            child: Container(
                              color: AppColors.transparent,
                              padding: EdgeInsets.all(getSize(9)),
                              child: Icon(
                                (state.isNewObscure)
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                              ),
                            ),
                          ),
                          onChanged: (value) =>
                              context.read<ChangePasswordBloc>().add(
                                ChangePasswordEvent.confirmPassChanged(
                                  value,
                                  state.newPass.getValue(),
                                ),
                              ),
                          validator: (_, context) => context
                              .read<ChangePasswordBloc>()
                              .state
                              .confirmPass
                              .value
                              .fold(
                                (f) => f.maybeMap(
                                  empty: (value) =>
                                      StringConstant.pleaseEnterConfirmPassword,
                                  shortPassword: (_) => StringConstant
                                      .passwordShouldBeMinimum8Digit,
                                  passwordsDontMatch: (_) => StringConstant
                                      .bothPasswordsAreDoesNotMatch,
                                  orElse: () => null,
                                ),
                                (_) => null,
                              ),
                        ),
                        Gap(getSize(50)),
                        CommonButton(
                          isSubmitting: state.isSubmitting,
                          onPressed: () {
                            context.read<ChangePasswordBloc>().add(
                              ChangePasswordEvent.submitPressed(),
                            );
                          },
                          buttonText: StringConstant.changePassword,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
