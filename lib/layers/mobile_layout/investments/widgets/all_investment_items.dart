import 'package:bank_dash/core/models/financial_item_model.dart';
import 'package:bank_dash/core/utils/app_colors.dart';
import 'package:bank_dash/core/utils/assets.dart';
import 'package:bank_dash/core/widgets/financial_item.dart';
import 'package:flutter/material.dart';

class AllInvestmentItems extends StatelessWidget {
  const AllInvestmentItems({
    super.key,
  });
  static List<FinancialItemModel> items = [
    FinancialItemModel(
      title: 'Total Invested Amount',
      value: '150,000',
      icon: Assets.imagesInvestedAmount,
      bgColor: AppColors.bgColorMintGreen,
    ),
    FinancialItemModel(
      title: 'Number of Investments',
      value: '5,600',
      icon: Assets.imagesNumberofInvestments,
      bgColor: AppColors.bgColorPink,
    ),
    FinancialItemModel(
      title: 'Rate of Return',
      value: '+5.80%',
      icon: Assets.imagesRateReturn,
      bgColor: AppColors.bgColorBlue,
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
      children: items
          .map(
            (e) => Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: FinancialItem(
                financialItemModel: e,
                withoutDollar: e.value.contains('+'),
              ),
            ),
          )
          .toList(),
    );
  }
}
