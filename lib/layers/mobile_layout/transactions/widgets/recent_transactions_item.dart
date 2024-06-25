import 'package:bank_dash/core/utils/app_styles/app_styles.dart';
import 'package:bank_dash/core/utils/assets.dart';
import 'package:bank_dash/layers/mobile_layout/transactions/models/transaction_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class RecentTransactionsItem extends StatelessWidget {
  const RecentTransactionsItem({
    super.key,
    required this.transactionModel,
  });

  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          transactionModel.isIncome
              ? Assets.imagesTransactionIncome
              : Assets.imagesTransactionExpense,
        ),
        const Gap(12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                transactionModel.title,
                style: AppStyles.medium.fontSize13(context),
              ),
              const Gap(5),
              Text(
                transactionModel.date,
                style: AppStyles.regular.fontSize12(context),
              ),
            ],
          ),
        ),
        const Gap(12),
        _buildAmountValue(context),
      ],
    );
  }

  Text _buildAmountValue(BuildContext context) {
    final isNegative = transactionModel.amount < 0;
    final absMount = transactionModel.amount.abs().toString();
    var dotsAmount = '';
    for (int i = absMount.length - 1; i >= 0; i--) {
      int index = absMount.length - 1 - i;
      if (index != 0 && index % 3 == 0) {
        dotsAmount += ',${absMount[i]}';
      } else {
        dotsAmount += absMount[i];
      }
    }

    dotsAmount = dotsAmount.split('').reversed.join();
    final finalAmount = isNegative ? '-\$$dotsAmount' : '\$$dotsAmount';
    return Text(
      finalAmount,
      style: AppStyles.medium.fontSize13(context).copyWith(
            color: isNegative ? Colors.red : Colors.green,
          ),
    );
  }
}
