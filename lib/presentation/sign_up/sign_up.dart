import 'package:aire_velo_bearings/application/sign_up_bloc/sign_up_bloc.dart';
import 'package:aire_velo_bearings/core/constants/string_constant.dart';
import 'package:aire_velo_bearings/core/router/app_router.gr.dart';
import 'package:aire_velo_bearings/core/utils/math_utils.dart';
import 'package:aire_velo_bearings/injection.dart';
import 'package:aire_velo_bearings/presentation/common/widgets/center_loading_indicator.dart';
import 'package:aire_velo_bearings/presentation/core/styles/app_colors.dart';
import 'package:aire_velo_bearings/presentation/core/widgets/buttons/common_button.dart';
import 'package:aire_velo_bearings/presentation/core/widgets/inputs/custom_text_field.dart';
import 'package:aire_velo_bearings/presentation/core/widgets/layout/layout.dart';
import 'package:aire_velo_bearings/presentation/core/widgets/layout/unfocus.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

@RoutePage(name: 'SignUp')
class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignUpBloc>(),
      child: Scaffold(
        appBar: CustomAppBar(title: StringConstant.createAccount),
        body: CustomUnFocus(
          child: BlocBuilder<SignUpBloc, SignUpState>(
            builder: (context, state) {
              return Stack(
                children: [
                  SingleChildScrollView(
                    child: Form(
                      autovalidateMode: (state.showError)
                          ? AutovalidateMode.always
                          : AutovalidateMode.disabled,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: getSize(20),
                          vertical: getSize(10),
                        ),
                        child: Column(
                          children: [
                            CustomTextField(
                              labelText: StringConstant.email,
                              onChanged: (value) => context
                                  .read<SignUpBloc>()
                                  .add(SignUpEvent.emailChanged(value)),
                              validator: (p0, p1) => context
                                  .read<SignUpBloc>()
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
                            Gap(getSize(20)),
                            CustomTextField(
                              labelText: StringConstant.password,
                              obscureText: state.isObscure,
                              suffixIcon: InkWell(
                                onTap: () {
                                  context.read<SignUpBloc>().add(
                                    const SignUpEvent.obscureChanged(),
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
                              onChanged: (value) => context
                                  .read<SignUpBloc>()
                                  .add(SignUpEvent.passwordChanged(value)),
                              validator: (p0, p1) => context
                                  .read<SignUpBloc>()
                                  .state
                                  .password
                                  .value
                                  .fold(
                                    (f) => f.maybeMap(
                                      empty: (value) =>
                                          StringConstant.pleaseEnterPassword,
                                      shortPassword: (_) => StringConstant
                                          .passwordShouldBeMinimum8Digit,
                                      /* invalidPassword: (value) => StringConstant
                                              .invalidPasswordErrorText, */
                                      orElse: () => null,
                                    ),
                                    (_) => null,
                                  ),
                            ),
                            Gap(getSize(20)),
                            CustomTextField(
                              labelText: StringConstant.confirmPassword,
                              obscureText: state.isObscure,
                              suffixIcon: InkWell(
                                onTap: () {
                                  context.read<SignUpBloc>().add(
                                    const SignUpEvent.obscureChanged(),
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
                                  context.read<SignUpBloc>().add(
                                    SignUpEvent.confirmPasswordChanged(
                                      value,
                                      state.password.getValue(),
                                    ),
                                  ),
                              validator: (_, context) => context
                                  .read<SignUpBloc>()
                                  .state
                                  .confirmPassword
                                  .value
                                  .fold(
                                    (f) => f.maybeMap(
                                      empty: (value) => StringConstant
                                          .pleaseEnterConfirmPassword,
                                      shortPassword: (_) => StringConstant
                                          .passwordShouldBeMinimum8Digit,
                                      passwordsDontMatch: (_) => StringConstant
                                          .bothPasswordsAreDoesNotMatch,
                                      /*invalidPassword: (value) =>
                                          StringConstant.invalidPasswordErrorText,*/
                                      orElse: () => null,
                                    ),
                                    (_) => null,
                                  ),
                            ),
                            Gap(getSize(30)),
                            CommonButton(
                              onPressed: () {
                                context.read<SignUpBloc>().add(
                                  SignUpEvent.submitPressed(),
                                );
                              },
                              buttonText: StringConstant.createAccount,
                            ),
                            Gap(getSize(15)),
                            CommonButton(
                              onPressed: () {
                                context.router.replace(
                                  PageRouteInfo(SignIn.name),
                                );
                              },
                              buttonText: StringConstant.iAlreadyHaveAnAccount,
                              backgroundColor: AppColors.lightGrey,
                              buttonTextColor: AppColors.black,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  if (state.isSubmitting) CenterLoadingIndicator(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
