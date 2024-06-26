import 'package:bank_dash/core/widgets/title_text.dart';
import 'package:bank_dash/layers/mobile_layout/overview/widgets/balance_history_chart.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DesktopOverviewBalanceHistory extends StatelessWidget {
  const DesktopOverviewBalanceHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleText(title: 'Balance History'),
        const Gap(12),
        Container(
          height: 215,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          padding: const EdgeInsets.all(15),
          child: const BalanceHistoryChart(),
        ),
      ],
    );
  }
}
