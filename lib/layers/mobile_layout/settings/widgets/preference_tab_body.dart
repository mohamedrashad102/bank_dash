import 'package:bank_dash/core/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'custom_switch.dart';

class PreferenceTabBody extends StatelessWidget {
  const PreferenceTabBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText(title: 'Notification'),
        Gap(15),
        CustomSwitch(body: 'I send or receive digita currency'),
        Gap(15),
        CustomSwitch(body: 'I receive merchant order'),
        Gap(15),
        CustomSwitch(body: 'There are recommendation for my account'),
        Gap(15),
      ],
    );
  }
}
