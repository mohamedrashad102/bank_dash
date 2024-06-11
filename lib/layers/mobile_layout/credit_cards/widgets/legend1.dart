import 'package:bank_dash/core/utils/app_colors.dart';
import 'package:bank_dash/layers/mobile_layout/account/widgets/chart_item.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Legend1 extends StatelessWidget {
  const Legend1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ChartItem(
          isCircle: true,
          title: 'DBL Bank',
          color: AppColors.contentColorBlue,
        ),
        Gap(20),
        ChartItem(
          isCircle: true,
          title: 'BRC Bank',
          color: AppColors.contentColorPink,
        ),
      ],
    );
  }
}
