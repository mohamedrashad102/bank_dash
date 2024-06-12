import 'package:bank_dash/core/models/financial_item_model.dart';
import 'package:bank_dash/core/utils/app_colors.dart';
import 'package:bank_dash/core/utils/assets.dart';
import 'package:bank_dash/core/widgets/financial_item.dart';
import 'package:flutter/material.dart';

class DesktopAccountItems extends StatelessWidget {
  const DesktopAccountItems({
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
    return Row(
      children: accountItems
          .asMap()
          .entries
          .map(
            (e) => Expanded(
              child: Padding(
                padding: e.key == accountItems.length - 1
                    ? EdgeInsets.zero
                    : const EdgeInsets.only(right: 10.0),
                child: FinancialItem(financialItemModel: e.value),
              ),
            ),
          )
          .toList(),
    );
  }
}
