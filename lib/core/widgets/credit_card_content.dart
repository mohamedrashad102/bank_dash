import 'package:bank_dash/core/models/credit_card_model.dart';
import 'package:bank_dash/core/widgets/credit_card_bottom_section.dart';
import 'package:bank_dash/core/widgets/credit_card_middle_section.dart';
import 'package:bank_dash/core/widgets/credit_card_top_section.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CreditCardContent extends StatelessWidget {
  const CreditCardContent({
    super.key,
    required this.card,
  });

  final CreditCardModel card;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CreditCardTopSection(card: card),
        const Gap(20),
        CreditCardMiddleSection(card: card),
        const SizedBox(height: 10),
        const Gap(20),
        CreditCardBottomSection(card: card),
      ],
    );
  }
}
