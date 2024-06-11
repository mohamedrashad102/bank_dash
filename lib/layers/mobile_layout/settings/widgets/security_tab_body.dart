import 'package:bank_dash/core/widgets/custom_text_button_builder.dart';
import 'package:bank_dash/core/widgets/title_text.dart';
import 'package:bank_dash/layers/mobile_layout/settings/widgets/custom_switch.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SecurityTabBody extends StatelessWidget {
  const SecurityTabBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleText(title: 'Two-factor Authentication'),
        const Gap(15),
        const CustomSwitch(body: 'Enable or disable two factor authentication'),
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
