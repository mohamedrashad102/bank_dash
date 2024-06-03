import 'package:bank_dash/core/models/credit_card_model.dart';
import 'package:flutter/material.dart';

import 'container_with_opacity.dart';
import 'credit_card_content.dart';

class CreditCardWidget extends StatelessWidget {
  final CreditCardModel card;
  final List<Color> gradientColors;
  const CreditCardWidget({
    super.key,
    required this.card,
    required this.gradientColors,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              colors: gradientColors,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          padding: const EdgeInsets.all(20),
          // margin: const EdgeInsets.symmetric(horizontal: 2),
          child: CreditCardContent(card: card),
        ),
        const ContainerWithOpacity(),
      ],
    );
  }
}
