import 'package:aire_velo_bearings/application/forgot_password_bloc/forgot_password_bloc.dart';
import 'package:aire_velo_bearings/core/constants/string_constant.dart';
import 'package:aire_velo_bearings/core/utils/math_utils.dart';
import 'package:aire_velo_bearings/presentation/core/widgets/buttons/common_button.dart';
import 'package:aire_velo_bearings/presentation/core/widgets/inputs/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class EmailView extends StatelessWidget {
  const EmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomTextField(
          labelText: StringConstant.email,
          onChanged: (value) => context.read<ForgotPasswordBloc>().add(
            ForgotPasswordEvent.emailChanged(value),
          ),
          validator: (p0, p1) =>
              context.read<ForgotPasswordBloc>().state.email.value.fold(
                (f) => f.maybeMap(
                  empty: (value) => StringConstant.pleaseEnterEmail,
                  invalidEmail: (_) => StringConstant.pleaseEnterValidEmail,
                  orElse: () => null,
                ),
                (_) => null,
              ),
        ),
        Gap(getSize(30)),
        CommonButton(onPressed: () {}, buttonText: StringConstant.submit),
      ],
    );
  }
}
