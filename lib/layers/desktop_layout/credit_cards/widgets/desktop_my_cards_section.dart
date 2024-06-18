import 'package:bank_dash/core/widgets/title_text.dart';
import 'package:bank_dash/layers/desktop_layout/credit_cards/widgets/desktop_my_cards_row.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DesktopMyCardsSection extends StatelessWidget {
  const DesktopMyCardsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText(title: 'My Cards'),
        Gap(20),
        DesktopMyCardsRow(),
      ],
    );
  }
}
