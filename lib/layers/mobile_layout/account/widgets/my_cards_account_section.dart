import 'package:bank_dash/core/widgets/credit_card_widget.dart';
import 'package:bank_dash/layers/mobile_layout/account/widgets/my_cards_title.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/models/credit_card_model.dart';

class MyCardsAccountSection extends StatelessWidget {
  const MyCardsAccountSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MyCardsTitle(),
        const Gap(12),
        CreditCardWidget(
          card: CreditCardModel(
            balance: '5,756',
            cardHolder: 'Abboud',
            validThru: '12/24',
            cardNumber: '3778 **** **** 1234',
            gradientColors: const [
              Color(0xFF2D60FF),
              Color(0xFF539BFF),
            ],
          ),
        )
      ],
    );
  }
}
