import 'package:bank_dash/core/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/widgets/custom_text_button_builder.dart';
import 'custom_switch.dart';

class PreferenceTabBody extends StatelessWidget {
  const PreferenceTabBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleText(title: 'Notification'),
        const Gap(15),
        const CustomSwitch(body: 'I send or receive digita currency'),
        const Gap(15),
        const CustomSwitch(body: 'I receive merchant order'),
        const Gap(15),
        const CustomSwitch(body: 'There are recommendation for my account'),
        const Gap(15),
        CustomTextButtonBuilder.normalWithText(
          context,
          text: 'Save',
          onTap: () {},
        ),
        const Gap(15),
      ],
    );
  }
}
