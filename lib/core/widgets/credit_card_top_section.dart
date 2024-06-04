import 'package:bank_dash/core/models/credit_card_model.dart';
import 'package:bank_dash/core/utils/app_styles/app_styles.dart';
import 'package:bank_dash/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CreditCardTopSection extends StatelessWidget {
  const CreditCardTopSection({
    super.key,
    required this.card,
  });

  final CreditCardModel card;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Balance',
              style: AppStyles.regular.fontSize12(context).copyWith(
                    color: Colors.white,
                  ),
            ),
            const Gap(1),
            Text(
              '\$${card.balance}',
              style: AppStyles.medium.fontSize16(context).copyWith(
                    color: Colors.white,
                  ),
            ),
          ],
        ),
        const Spacer(),
        Image.asset(Assets.imagesChipCardPng)
      ],
    );
  }
}
