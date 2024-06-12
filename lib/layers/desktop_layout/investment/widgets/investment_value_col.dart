import 'package:bank_dash/core/models/common_item_model.dart';
import 'package:bank_dash/core/utils/app_styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class InvestmentValueCol extends StatelessWidget {
  const InvestmentValueCol({
    super.key,
    required this.investmentItemModel,
  });
  final CommonItemModel investmentItemModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            '\$${investmentItemModel.amount}',
            style: AppStyles.medium
                .fontSize14(context)
                .copyWith(color: const Color(0xff333B69)),
          ),
        ),
        const Gap(4),
        FittedBox(
          child: Text(
            'Investment Value',
            style: AppStyles.regular.fontSize12(context),
          ),
        ),
      ],
    );
  }
}
