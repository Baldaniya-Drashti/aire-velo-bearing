import 'package:aire_velo_bearings/application/forgot_password_bloc/forgot_password_bloc.dart';
import 'package:aire_velo_bearings/core/constants/string_constant.dart';
import 'package:aire_velo_bearings/core/utils/math_utils.dart';
import 'package:aire_velo_bearings/injection.dart';
import 'package:aire_velo_bearings/presentation/common/widgets/base_text.dart';
import 'package:aire_velo_bearings/presentation/core/widgets/buttons/common_button.dart';
import 'package:aire_velo_bearings/presentation/core/widgets/inputs/custom_app_bar.dart';
import 'package:aire_velo_bearings/presentation/core/widgets/inputs/custom_text_field.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

@RoutePage(name: 'ForgotPassword')
class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ForgotPasswordBloc>(),
      child: Scaffold(
        appBar: CustomAppBar(title: StringConstant.forgotPassword),
        body: BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
          builder: (context, state) {
            return Form(
              autovalidateMode: state.showError
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: getSize(20)),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: getSize(50),
                        bottom: getSize(30),
                      ),
                      child: BaseText(
                        text: StringConstant.forgotPasswordDesc,
                        textAlign: TextAlign.center,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    CustomTextField(
                      labelText: StringConstant.email,
                      onChanged: (value) => context
                          .read<ForgotPasswordBloc>()
                          .add(ForgotPasswordEvent.emailChanged(value)),
                      validator: (p0, p1) => context
                          .read<ForgotPasswordBloc>()
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
                    Gap(getSize(30)),
                    CommonButton(
                      isSubmitting: state.isSubmitting,
                      onPressed: () {
                        context.read<ForgotPasswordBloc>().add(
                          ForgotPasswordEvent.submitPressed(),
                        );
                      },
                      buttonText: StringConstant.submit,
                    ),
                    /* Expanded(
                      child: PageView(
                        controller: context
                            .read<ForgotPasswordBloc>()
                            .pageController,
                        children: [EmailView(), OtpView(), OtpView()],
                        onPageChanged: (page) {
                          context.read<ForgotPasswordBloc>().add(
                            ForgotPasswordEvent.pageChanged(page),
                          );
                        },
                      ),
                    ), */
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
