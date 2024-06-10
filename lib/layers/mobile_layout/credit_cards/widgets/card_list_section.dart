import 'package:bank_dash/core/widgets/title_text.dart';
import 'package:bank_dash/layers/mobile_layout/credit_cards/widgets/cards_list.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CardListSection extends StatelessWidget {
  const CardListSection({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText(title: 'Card List'),
        Gap(12),
        CardsList(),
      ],
    );
  }
}
