import 'package:bank_dash/core/models/credit_card_model.dart';
import 'package:bank_dash/core/utils/app_styles/app_styles.dart';
import 'package:bank_dash/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreditCardBottomSection extends StatelessWidget {
  const CreditCardBottomSection({
    super.key,
    required this.card,
  });

  final CreditCardModel card;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // before 
        Text(
          card.cardNumber,
          style: AppStyles.medium
              .fontSize16(context)
              .copyWith(color: Colors.white),
        ),
        // after
        Text(
          card.cardNumber
              .split(' ')
              .asMap()
              .entries
              .map((entry) =>
                  (entry.key == 0 || entry.key == 3) ? entry.value : '****')
              .join(' '),
          style: AppStyles.medium
              .fontSize16(context)
              .copyWith(color: Colors.white),
        ),
        SvgPicture.asset(Assets.imagesMasterCard)
      ],
    );
  }
}
