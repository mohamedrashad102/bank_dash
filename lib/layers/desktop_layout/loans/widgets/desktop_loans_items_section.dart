import 'package:bank_dash/core/models/financial_item_model.dart';
import 'package:bank_dash/core/utils/app_colors.dart';
import 'package:bank_dash/core/utils/assets.dart';
import 'package:bank_dash/core/widgets/financial_item.dart';
import 'package:flutter/material.dart';

class DesktopLoansItemsSection extends StatelessWidget {
  const DesktopLoansItemsSection({super.key});
  static List<FinancialItemModel> loansItems = [
    // Personal Loans ,Corporate Loans,Business Loans,Custom Loans
    FinancialItemModel(
      bgColor: AppColors.bgColorBlue,
      icon: Assets.imagesBluePerson,
      title: 'Personal Loans',
      value: '50,000',
    ),
    FinancialItemModel(
      bgColor: AppColors.bgColorYellow,
      icon: Assets.imagesBagLoans,
      title: 'Corporate Loans',
      value: '100,000',
    ),
    FinancialItemModel(
      bgColor: AppColors.bgColorPink,
      icon: Assets.imagesBusinessLoansPink,
      title: 'Business Loans',
      value: '500,000',
    ),
    FinancialItemModel(
      bgColor: AppColors.bgColorMintGreen,
      icon: Assets.imagesCustomLoans,
      title: 'Custom Loans',
      value: '800,000',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: loansItems
          .asMap()
          .entries
          .map(
            (e) => Expanded(
              child: Padding(
                padding: e.key == loansItems.length - 1
                    ? EdgeInsets.zero
                    : const EdgeInsets.only(right: 30.0),
                child: FinancialItem(financialItemModel: e.value),
              ),
            ),
          )
          .toList(),
    );
  }
}
