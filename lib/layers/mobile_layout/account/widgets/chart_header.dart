import 'package:bank_dash/core/utils/app_colors.dart';
import 'package:bank_dash/layers/mobile_layout/account/widgets/chart_item.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ChartHeader extends StatelessWidget {
  const ChartHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ChartItem(
          title: 'Debit',
          color: AppColors.contentColorBlue,
        ),
        Gap(20),
        ChartItem(
          title: 'Credit',
          color: AppColors.contentColorPink,
        ),
      ],
    );
  }
}
