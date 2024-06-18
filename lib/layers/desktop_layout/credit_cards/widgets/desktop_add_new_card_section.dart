import 'package:bank_dash/core/widgets/title_text.dart';
import 'package:bank_dash/layers/desktop_layout/credit_cards/widgets/desktop_add_new_card_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DesktopAddNewCardSection extends StatelessWidget {
  const DesktopAddNewCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText(title: 'Add New Card'),
        Gap(12),
        DesktopAddNewCardContainer(),
      ],
    );
  }
}
