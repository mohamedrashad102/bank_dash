import 'package:bank_dash/core/models/credit_card_model.dart';
import 'package:bank_dash/core/widgets/credit_card_widget.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class MyCreditCards extends StatelessWidget {
  const MyCreditCards({
    super.key,
  });
  static List<CreditCardModel> cards = [
    CreditCardModel(
      balance: '1.25',
      cardHolder: 'αвdεℓ мαвσυd 🪐',
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
