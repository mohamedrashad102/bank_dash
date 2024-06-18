import 'package:bank_dash/core/widgets/title_text.dart';
import 'package:bank_dash/layers/desktop_layout/credit_cards/widgets/desktop_cards_list.dart';
import 'package:bank_dash/layers/mobile_layout/credit_cards/widgets/card_expense_statistics_scetion.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DesktopCreditCardsMiddleSection extends StatelessWidget {
  const DesktopCreditCardsMiddleSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: CardExpenseStatisticsScetion(),
        ),
        Gap(30),
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleText(title: 'Card List'),
              Gap(12),
              DesktopCardsList(),
            ],
          ),
        )
      ],
    );
  }
}
