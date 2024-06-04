import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import '../../../../core/models/credit_card_model.dart';
import '../../../../core/widgets/credit_card_widget.dart';
import '../../../../core/widgets/custom_scaffold.dart';
import '../../../../core/widgets/title_text.dart';

class CreditCardsView extends StatelessWidget {
  const CreditCardsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      title: 'Credit Cards',
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            children: [
              MyCreditCardsSection(),
              Gap(22),
              TitleText(title: 'Card Expense Statistics'),
            ],
          ),
        ),
      ),
    );
  }
}

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

class MyCreditCards extends StatelessWidget {
  const MyCreditCards({
    super.key,
  });
  static List<CreditCardModel> cards = [
    CreditCardModel(
      balance: '1.25',
      cardHolder: 'αвᴅεℓ мαвσυᴅ 🪐',
      validThru: '12/22',
      cardNumber: '3142 1293 4394 9243',
      gradientColors: const [
        Color(0xFF01121B),
        Color(0xFF0A06F4),
      ],
    ),
    CreditCardModel(
      balance: '1281.3',
      cardHolder: 'hma Rashd',
      validThru: '12/22',
      cardNumber: '3142 1293 4394 9243',
      gradientColors: const [
        Color(0xFF2D60FF),
        Color(0xFF539BFF),
      ],
    ),
    CreditCardModel(
      balance: '1281.3',
      cardHolder: 'Abdo',
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
    return ExpandablePageView.builder(
      clipBehavior: Clip.none,
      controller: PageController(viewportFraction: 0.99),
      itemBuilder: (context, index) => Padding(
        padding: index == cards.length - 1
            ? EdgeInsets.zero
            : const EdgeInsets.only(right: 10.0),
        child: CreditCardWidget(
          card: cards[index],
        ),
      ),
      itemCount: cards.length,
    );
  }
}
