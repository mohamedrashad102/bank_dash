import 'package:bank_dash/core/utils/app_styles/app_styles.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
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
        ExpandablePageView.builder(
          controller: PageController(viewportFraction: .99),
          clipBehavior: Clip.none,
          itemBuilder: (context, index) => Padding(
            padding: index == cards.length - 1
                ? EdgeInsets.zero
                : const EdgeInsets.only(right: 10.0),
            child: CreditCardWidget(
              card: cards[index],
            ),
          ),
          itemCount: cards.length,
        ),
      ],
    );
  }
}
