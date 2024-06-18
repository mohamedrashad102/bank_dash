import 'package:bank_dash/core/models/credit_card_model.dart';
import 'package:bank_dash/core/widgets/credit_card_widget.dart';
import 'package:flutter/material.dart';

class DesktopMyCardsRow extends StatelessWidget {
  const DesktopMyCardsRow({
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
    return Row(
      children: cards
          .asMap()
          .entries
          .map(
            (entry) => Expanded(
              child: Padding(
                padding: entry.key == cards.length - 1
                    ? EdgeInsets.zero
                    : const EdgeInsets.only(right: 30.0),
                child: CreditCardWidget(card: entry.value),
              ),
            ),
          )
          .toList(),
    );
  }
}
