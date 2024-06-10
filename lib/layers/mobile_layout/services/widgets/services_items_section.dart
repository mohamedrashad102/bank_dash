import 'package:bank_dash/core/models/financial_item_model.dart';
import 'package:bank_dash/core/utils/app_colors.dart';
import 'package:bank_dash/core/utils/assets.dart';
import 'package:bank_dash/core/widgets/custom_scroll_row.dart';
import 'package:flutter/material.dart';

class ServicesItemsSection extends StatelessWidget {
  const ServicesItemsSection({super.key});
  static List<FinancialItemModel> services = [
    FinancialItemModel(
      bgColor: AppColors.bgColorBlue,
      icon: Assets.imagesLifeInsurance,
      title: 'Life Insurance',
      value: 'Unlimited protection',
    ),
    FinancialItemModel(
      bgColor: AppColors.bgColorYellow,
      icon: Assets.imagesShopping,
      title: 'Shopping',
      value: 'Buy. Think. Grow',
    ),
    FinancialItemModel(
      bgColor: AppColors.bgColorMintGreen,
      icon: Assets.imagesSafety,
      title: 'Safety',
      value: 'We are your allies',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return CustomScrollRow(financialItems: services);
  }
}
