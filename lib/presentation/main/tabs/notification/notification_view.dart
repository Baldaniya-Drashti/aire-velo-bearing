// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:auto_route/auto_route.dart';
import 'package:aire_velo_bearings/core/constants/string_constant.dart';
import 'package:aire_velo_bearings/presentation/common/widgets/base_text.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'NotificationView')
class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseText(text: StringConstant.notification);
  }
}
