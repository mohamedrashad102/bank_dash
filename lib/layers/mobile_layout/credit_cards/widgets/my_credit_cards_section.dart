import 'package:bank_dash/core/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'my_credit_cards.dart';

class MyCreditCardsSection extends StatelessWidget {
  const MyCreditCardsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText(title: 'My Cards'),
        Gap(12),
        MyCreditCards(),
      ],
    );
  }
}
