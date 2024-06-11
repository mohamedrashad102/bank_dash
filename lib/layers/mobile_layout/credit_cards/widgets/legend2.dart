import 'package:bank_dash/core/utils/app_colors.dart';
import 'package:bank_dash/layers/mobile_layout/account/widgets/chart_item.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Legend2 extends StatelessWidget {
  const Legend2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ChartItem(
          isCircle: true,
          title: 'ABM Bank',
          color: AppColors.contentColorMintGreen,
        ),
        Gap(20),
        ChartItem(
          isCircle: true,
          title: 'MCP Bank',
          color: AppColors.contentColorYellow,
        ),
      ],
    );
  }
}
