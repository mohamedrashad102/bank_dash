import 'package:bank_dash/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import 'chart_legend.dart';

class CardExpenseStatisticsChart extends StatelessWidget {
  const CardExpenseStatisticsChart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: const LinearGradient(
            colors: [
              Color(0xFF01121B),
              Color.fromARGB(255, 100, 99, 133),
            ],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          )),
      child: Column(
        children: [
          SvgPicture.asset(Assets.imagesChartExpenses),
          const Gap(21),
          const ChartLegend()
        ],
      ),
    );
  }
}
