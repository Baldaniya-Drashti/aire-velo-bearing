import 'package:aire_velo_bearings/application/sign_in_bloc/sign_in_bloc.dart';
import 'package:aire_velo_bearings/core/constants/string_constant.dart';
import 'package:aire_velo_bearings/core/router/app_router.gr.dart';
import 'package:aire_velo_bearings/core/utils/math_utils.dart';
import 'package:aire_velo_bearings/injection.dart';
import 'package:aire_velo_bearings/presentation/common/widgets/base_text.dart';
import 'package:aire_velo_bearings/presentation/common/widgets/center_loading_indicator.dart';
import 'package:aire_velo_bearings/presentation/core/styles/app_colors.dart';
import 'package:aire_velo_bearings/presentation/core/widgets/buttons/common_button.dart';
import 'package:aire_velo_bearings/presentation/core/widgets/inputs/custom_app_bar.dart';
import 'package:aire_velo_bearings/presentation/core/widgets/inputs/custom_text_field.dart';
import 'package:aire_velo_bearings/presentation/core/widgets/layout/unfocus.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

@RoutePage(name: 'SignIn')
class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<SignInBloc>()..add(SignInEvent.getLoginCredential()),
      child: Scaffold(
        appBar: CustomAppBar(title: StringConstant.logIn),
        body: CustomUnFocus(
          child: BlocBuilder<SignInBloc, SignInState>(
            builder: (context, state) {
              return Stack(
                children: [
                  (state.isLoading)
                      ? CenterLoadingIndicator(isOnlyLoader: true)
                      : SingleChildScrollView(
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
                                    initialValue: state.email.getValue(),
                                    labelText: StringConstant.email,
                                    keyboardType: TextInputType.emailAddress,
                                    onChanged: (value) => context
                                        .read<SignInBloc>()
                                        .add(SignInEvent.emailChanged(value)),
                                    validator: (p0, p1) => context
                                        .read<SignInBloc>()
                                        .state
                                        .email
                                        .value
                                        .fold(
                                          (f) => f.maybeMap(
                                            empty: (value) =>
                                                StringConstant.pleaseEnterEmail,
                                            invalidEmail: (_) => StringConstant
                                                .pleaseEnterValidEmail,
                                            orElse: () => null,
                                          ),
                                          (_) => null,
                                        ),
                                  ),
                                  Gap(getSize(20)),
                                  CustomTextField(
                                    initialValue: state.password.getValue(),
                                    labelText: StringConstant.password,
                                    obscureText: state.isObscure,
                                    suffixIcon: InkWell(
                                      onTap: () {
                                        context.read<SignInBloc>().add(
                                          const SignInEvent.obscureChanged(),
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
                                        context.read<SignInBloc>().add(
                                          SignInEvent.passwordChanged(value),
                                        ),
                                    validator: (p0, p1) => context
                                        .read<SignInBloc>()
                                        .state
                                        .password
                                        .value
                                        .fold(
                                          (f) => f.maybeMap(
                                            empty: (value) => StringConstant
                                                .pleaseEnterPassword,
                                            shortPassword: (_) => StringConstant
                                                .passwordShouldBeMinimum8Digit,
                                            /* invalidPassword: (value) => StringConstant
                                                .invalidPasswordErrorText, */
                                            orElse: () => null,
                                          ),
                                          (_) => null,
                                        ),
                                  ),
                                  Gap(getSize(10)),
                                  remeberMe(context, state),
                                  Gap(getSize(20)),
                                  CommonButton(
                                    onPressed: () {
                                      context.read<SignInBloc>().add(
                                        SignInEvent.loginPressed(),
                                      );
                                    },
                                    buttonText: StringConstant.logIn,
                                  ),
                                  Gap(getSize(15)),
                                  CommonButton(
                                    onPressed: () {
                                      context.router.replace(
                                        PageRouteInfo(SignUp.name),
                                      );
                                    },
                                    buttonText: StringConstant.createAnAccount,
                                    backgroundColor: AppColors.lightGrey,
                                    buttonTextColor: AppColors.black,
                                  ),
                                  Gap(getSize(20)),
                                  InkWell(
                                    onTap: () {
                                      context.router.push(
                                        PageRouteInfo(ForgotPassword.name),
                                      );
                                    },
                                    child: BaseText(
                                      text: StringConstant.iForgotMyPassword,
                                    ),
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

  Widget remeberMe(BuildContext context, SignInState state) {
    return GestureDetector(
      onTap: () {
        context.read<SignInBloc>().add(SignInEvent.rememberMeEvent());
      },
      child: Row(
        children: [
          Checkbox(
            value: state.rememberMe,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            onChanged: (value) {
              context.read<SignInBloc>().add(SignInEvent.rememberMeEvent());
            },
            activeColor: AppColors.black,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            visualDensity: VisualDensity.compact,
          ),
          Gap(getSize(5)),
          BaseText(text: StringConstant.rememberMe),
        ],
      ),
    );
  }
}
