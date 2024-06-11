import 'package:bank_dash/core/widgets/title_text.dart';
import 'package:bank_dash/layers/mobile_layout/settings/widgets/custom_switch.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SecurityTabBody extends StatelessWidget {
  const SecurityTabBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText(title: 'Two-factor Authentication'),
        Gap(15),
        CustomSwitch(body: 'Enable or disable two factor authentication'),
      
      ],
    );
  }
}
