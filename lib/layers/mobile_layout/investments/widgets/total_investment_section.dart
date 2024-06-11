import 'package:bank_dash/core/widgets/title_text.dart';
import 'package:bank_dash/layers/mobile_layout/investments/widgets/total_investment_chart.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TotalInvestmentSection extends StatelessWidget {
  const TotalInvestmentSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleText(title: 'Yearly Total Investment'),
        const Gap(12),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          padding: const EdgeInsets.all(20),
          child: const TotalInvestmentChart(),
        ),
      ],
    );
  }
}
