import 'package:bank_dash/core/models/credit_card_model.dart';
import 'package:bank_dash/core/utils/app_styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class CreditCardMiddleSection extends StatelessWidget {
  const CreditCardMiddleSection({
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
              'CARD HOLDER',
              style: AppStyles.regular.fontSize12(context).copyWith(
                    color: Colors.white.withOpacity(0.7),
                  ),
            ),
            Text(
              card.cardHolder,
              style: AppStyles.regular
                  .fontSize15(context)
                  .copyWith(color: Colors.white),
            ),
          ],
        ),
        const Gap(60),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FittedBox(
              child: Text(
                'VALID',
                style: AppStyles.regular
                    .fontSize12(context)
                    .copyWith(color: Colors.white.withOpacity(0.7)),
              ),
            ),
            Text(
              card.validThru,
              style: AppStyles.regular
                  .fontSize15(context)
                  .copyWith(color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}
