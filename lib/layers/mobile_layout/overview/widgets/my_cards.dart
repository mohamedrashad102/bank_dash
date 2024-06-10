import 'package:bank_dash/core/utils/app_styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/models/credit_card_model.dart';
import '../../../../core/widgets/credit_card_widget.dart';
import '../../../../core/widgets/title_text.dart';

class MyCards extends StatelessWidget {
  const MyCards({super.key});

  static List<CreditCardModel> cards = [
    CreditCardModel(
      balance: '1281.3',
      cardHolder: 'card Holder',
      validThru: '12/22',
      cardNumber: '3142 1293 4394 9243',
      gradientColors: const [
        Color(0xFF4C49ED),
        Color(0xFF0A06F4),
      ],
    ),
    CreditCardModel(
      balance: '1281.3',
      cardHolder: 'card Holder',
      validThru: '12/22',
      cardNumber: '3142 1293 4394 9243',
      gradientColors: const [
        Color(0xFF4C49ED),
        Color(0xFF0A06F4),
      ],
    ),
    CreditCardModel(
      balance: '1281.3',
      cardHolder: 'card Holder',
      validThru: '12/22',
      cardNumber: '3142 1293 4394 9243',
      gradientColors: const [
        Color(0xFF4C49ED),
        Color(0xFF0A06F4),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const TitleText(
              title: 'My Cards',
            ),
            const Spacer(),
            Text(
              'See All',
              style: AppStyles.semiBold.fontSize14(context),
            ),
          ],
        ),
        const Gap(12),
        SizedBox(
          height: 220,
          child: PageView.builder(
            itemBuilder: (context, index) => CreditCardWidget(
              card: cards[index],
            ),
            itemCount: cards.length,
          ),
        ),
        // SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   child: Row(
        //     children:
        //         cards.map((card) => CreditCardWidget(card: card)).toList(),
        //   ),
        // ),
      ],
    );
  }
}
