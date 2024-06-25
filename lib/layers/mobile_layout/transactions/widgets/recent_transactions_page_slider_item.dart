import 'package:bank_dash/core/utils/app_colors.dart';
import 'package:bank_dash/core/utils/app_styles/app_styles.dart';
import 'package:bank_dash/layers/mobile_layout/transactions/cubits/transactions_tab_bar_cubit.dart';
import 'package:flutter/material.dart';

class RecentTransactionsPageSliderItem extends StatelessWidget {
  const RecentTransactionsPageSliderItem({
    super.key,
    required this.index,
    required this.isSelected,
  });
  final int index;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => TransactionsTabBarCubit.get(context).changePageIndex(index),
      child: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          color: isSelected ? AppColors.contentColorBlue : Colors.transparent,
          borderRadius: BorderRadius.circular(5),
        ),
        alignment: Alignment.center,
        child: Text(
          (index + 1).toString(),
          style: AppStyles.bold.fontSize12(context).copyWith(
                color: isSelected ? Colors.white : AppColors.contentColorBlue,
              ),
        ),
      ),
    );
  }
}
