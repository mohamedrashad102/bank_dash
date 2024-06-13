import 'package:bank_dash/layers/mobile_layout/account/widgets/debit_chart.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/widgets/title_text.dart';

class WeeklyActivity extends StatelessWidget {
  const WeeklyActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText(title: 'Weekly Activity'),
        Gap(12),
        DebitChart(),
      ],
    );
  }
}
