import 'package:bank_dash/core/models/financial_item_model.dart';
import 'package:bank_dash/core/utils/assets.dart';
import 'package:bank_dash/core/widgets/financial_item.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_colors.dart';

class AllAccountItems extends StatelessWidget {
  const AllAccountItems({
    super.key,
  });
  static List<FinancialItemModel> accountItems = [
    FinancialItemModel(
      title: 'My Balance',
      value: '12,750',
      icon: Assets.imagesMoneyTag,
      bgColor: AppColors.bgColorYellow,
    ),
    FinancialItemModel(
      title: 'Income',
      value: '5,600',
      icon: Assets.imagesIncome,
      bgColor: AppColors.bgColorBlue,
    ),
    FinancialItemModel(
      title: 'Expense',
      value: '3,450',
      icon: Assets.imagesExpense,
      bgColor: AppColors.bgColorPink,
    ),
    FinancialItemModel(
      title: 'Total Svaing',
      value: '7,900',
      icon: Assets.imagesSaving,
      bgColor: AppColors.bgColorMintGreen,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    // return Wrap(
    //   direction: Axis.horizontal,
    //   children: items
    //       .map(
    //         (e) => AccountItem(accountItemModel: e),
    //       )
    //       .toList(),
    // );
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: FinancialItem(
                financialItemModel: accountItems[0],
              ),
            ),
            const Gap(15),
            Expanded(
              child: FinancialItem(
                financialItemModel: accountItems[1],
              ),
            )
          ],
        ),
        const Gap(15),
        Row(
          children: [
            Expanded(
              child: FinancialItem(
                financialItemModel: accountItems[2],
              ),
            ),
            const Gap(15),
            Expanded(
              child: FinancialItem(
                financialItemModel: accountItems[3],
              ),
            )
          ],
        )
      ],
    );
  }
}
