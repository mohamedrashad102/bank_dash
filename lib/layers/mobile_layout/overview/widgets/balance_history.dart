import 'package:bank_dash/core/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import 'balance_history_chart.dart';

class BalanceHistory extends StatelessWidget {
  const BalanceHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText(title: 'Balance History'),
        Gap(30),
        SizedBox(
          height: 230,
          width: double.infinity,
          child: BalanceHistoryChart(),
        ),
      ],
    );
  }
}
