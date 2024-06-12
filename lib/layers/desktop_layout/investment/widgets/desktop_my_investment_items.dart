import 'package:bank_dash/core/models/common_item_model.dart';
import 'package:bank_dash/core/utils/app_colors.dart';
import 'package:bank_dash/core/utils/assets.dart';
import 'package:bank_dash/layers/desktop_layout/investment/views/desktop_investment_view.dart';
import 'package:flutter/material.dart';

import 'desktop_investment_item.dart';

class DesktopMyInvestmentItems extends StatelessWidget {
  const DesktopMyInvestmentItems({
    super.key,
  });
  static List<CommonItemModel> investItems = [
    CommonItemModel(
      title: 'Apple Store',
      amount: '+16%',
      investmentVal: '100,000',
      icon: Assets.imagesApplePink,
      bgColor: AppColors.bgColorPink,
      date: 'E-commerce, Marketplace',
    ),
    CommonItemModel(
      title: 'Google Store',
      amount: '-4%',
      investmentVal: '54,000',
      icon: Assets.imagesGoogle,
      bgColor: AppColors.bgColorBlue,
      date: 'E-commerce, Marketplace',
    ),
    CommonItemModel(
      title: 'Tesla Motors',
      amount: '+25%',
      investmentVal: '25,300',
      icon: Assets.imagesTesla,
      bgColor: AppColors.bgColorYellow,
      date: 'E-commerce, Marketplace',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: investItems
          .asMap()
          .entries
          .map(
            (e) => Padding(
              padding: e.key == 1
                  ? const EdgeInsets.symmetric(vertical: 12.0)
                  : EdgeInsets.zero,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.all(12),
                child: DesktopInvestmentItem(
                  commonItemModel: e.value,
                  textColor: e.value.amount.contains('-')
                      ? AppColors.decrementColor
                      : AppColors.incrementColor,
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
