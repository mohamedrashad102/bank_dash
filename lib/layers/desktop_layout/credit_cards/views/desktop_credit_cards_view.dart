import 'package:bank_dash/layers/mobile_layout/credit_cards/widgets/card_settings_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import '../widgets/desktop_add_new_card_section.dart';
import '../widgets/desktop_credit_cards_middle_section.dart';
import '../widgets/desktop_my_cards_section.dart';

class DesktopCreditCardsView extends StatelessWidget {
  const DesktopCreditCardsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        DesktopMyCardsSection(),
        Gap(24),
        DesktopCreditCardsMiddleSection(),
        Gap(24),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: DesktopAddNewCardSection(),
            ),
            Gap(24),
            Expanded(
              child: CardSettingsSection(),
            ),
          ],
        )
      ],
    );
  }
}
