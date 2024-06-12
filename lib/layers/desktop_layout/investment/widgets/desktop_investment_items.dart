import 'package:bank_dash/core/models/financial_item_model.dart';
import 'package:bank_dash/core/utils/app_colors.dart';
import 'package:bank_dash/core/utils/assets.dart';
import 'package:bank_dash/core/widgets/financial_item.dart';
import 'package:flutter/material.dart';

class DesktopInvestmentItems extends StatelessWidget {
  const DesktopInvestmentItems({
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
    return Row(
      children: items
          .asMap()
          .entries
          .map(
            (e) => Expanded(
              child: Padding(
                padding: e.key == items.length - 1
                    ? EdgeInsets.zero
                    : const EdgeInsets.only(right: 30.0),
                child: FinancialItem(
                  financialItemModel: e.value,
                  withoutDollar: e.value.value.contains('+'),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
