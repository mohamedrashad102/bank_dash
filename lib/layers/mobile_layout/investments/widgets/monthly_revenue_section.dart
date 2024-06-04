import 'package:bank_dash/core/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'monthly_revenue_chart.dart';

class MonthlyRevenueSection extends StatelessWidget {
  const MonthlyRevenueSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleText(title: 'Monthly Revenue'),
        const Gap(12),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          padding: const EdgeInsets.all(20),
          child: const MonthlyRevenueChart(),
        ),
      ],
    );
  }
}
