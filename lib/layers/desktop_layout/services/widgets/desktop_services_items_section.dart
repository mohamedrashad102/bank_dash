import 'package:bank_dash/core/models/financial_item_model.dart';
import 'package:bank_dash/core/utils/app_colors.dart';
import 'package:bank_dash/core/utils/assets.dart';
import 'package:bank_dash/core/widgets/financial_item.dart';
import 'package:flutter/material.dart';

class DesktopServicesItemsSection extends StatelessWidget {
  const DesktopServicesItemsSection({super.key});
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
    return Row(
      children: services
          .asMap()
          .entries
          .map(
            (e) => Expanded(
              child: Padding(
                padding: e.key == services.length - 1
                    ? EdgeInsets.zero
                    : const EdgeInsets.only(right: 30.0),
                child: FinancialItem(
                  withoutDollar: true,
                  financialItemModel: e.value,
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
