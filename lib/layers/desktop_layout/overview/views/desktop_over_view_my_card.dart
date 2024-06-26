import 'package:bank_dash/core/models/credit_card_model.dart';
import 'package:bank_dash/core/utils/app_styles/app_styles.dart';
import 'package:bank_dash/core/widgets/credit_card_widget.dart';
import 'package:bank_dash/core/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DesktopOverViewMyCard extends StatelessWidget {
  const DesktopOverViewMyCard({super.key});

  static List<CreditCardModel> cards = [
    CreditCardModel(
      balance: '1281.3',
      cardHolder: 'Mohamed Rashad',
      validThru: '12/22',
      cardNumber: '3142 1293 4394 9243',
      gradientColors: const [
        Color(0xFF4C49ED),
        Color(0xFF0A06F4),
      ],
    ),
    CreditCardModel(
      balance: '1281.3',
      cardHolder: 'Abooud',
      validThru: '12/22',
      cardNumber: '3142 1293 4394 9243',
      gradientColors: const [
        Color(0xFF2F2DA5),
        Color(0xFF0000FF),
      ],
    ),
    CreditCardModel(
      balance: '1281.3',
      cardHolder: 'Ahmed',
      validThru: '12/22',
      cardNumber: '3142 1293 4394 9243',
      gradientColors: const [
        Color(0xFF2D60FF),
        Color(0xFF539BFF),
      ],
    ),
    CreditCardModel(
      balance: '1281.3',
      cardHolder: 'Mohamed Rashad',
      validThru: '12/22',
      cardNumber: '3142 1293 4394 9243',
      gradientColors: const [
        Color(0xFF4C49ED),
        Color(0xFF0A06F4),
      ],
    ),
    CreditCardModel(
      balance: '1281.3',
      cardHolder: 'Abooud',
      validThru: '12/22',
      cardNumber: '3142 1293 4394 9243',
      gradientColors: const [
        Color(0xFF2F2DA5),
        Color(0xFF0000FF),
      ],
    ),
    CreditCardModel(
      balance: '1281.3',
      cardHolder: 'Ahmed',
      validThru: '12/22',
      cardNumber: '3142 1293 4394 9243',
      gradientColors: const [
        Color(0xFF2D60FF),
        Color(0xFF539BFF),
      ],
    ),
    CreditCardModel(
      balance: '1281.3',
      cardHolder: 'Mohamed Rashad',
      validThru: '12/22',
      cardNumber: '3142 1293 4394 9243',
      gradientColors: const [
        Color(0xFF4C49ED),
        Color(0xFF0A06F4),
      ],
    ),
    CreditCardModel(
      balance: '1281.3',
      cardHolder: 'Abooud',
      validThru: '12/22',
      cardNumber: '3142 1293 4394 9243',
      gradientColors: const [
        Color(0xFF2F2DA5),
        Color(0xFF0000FF),
      ],
    ),
    CreditCardModel(
      balance: '1281.3',
      cardHolder: 'Ahmed',
      validThru: '12/22',
      cardNumber: '3142 1293 4394 9243',
      gradientColors: const [
        Color(0xFF2D60FF),
        Color(0xFF539BFF),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const TitleText(title: 'My Cards'),
            const Spacer(),
            Text(
              'See All',
              style: AppStyles.semiBold.fontSize14(context),
            ),
          ],
        ),
        const Gap(12),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: cards
                .map((card) => Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: SizedBox(
                        width: 350,
                        child: CreditCardWidget(card: card),
                      ),
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}
