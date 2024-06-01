import 'package:bank_dash/core/utils/app_styles/app_styles.dart';
import 'package:bank_dash/layers/mobile_layout/account/models/account_item_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TitleDateColumn extends StatelessWidget {
  const TitleDateColumn({
    super.key,
    required this.transactionItemModel,
  });

  final TransactionItemModel transactionItemModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            transactionItemModel.title,
            style: AppStyles.medium.fontSize14(context),
          ),
        ),
        const Gap(4),
        FittedBox(
          child: Text(
            transactionItemModel.date,
            style: AppStyles.regular.fontSize12(context),
          ),
        ),
      ],
    );
  }
}
