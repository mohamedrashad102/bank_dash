import 'package:bank_dash/core/widgets/title_text.dart';
import 'package:bank_dash/layers/mobile_layout/account/widgets/debit_chart.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DebitSection extends StatelessWidget {
  const DebitSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText(title: 'Debit & Credit Overview'),
        Gap(12),
        DebitChart(),
      ],
    );
  }
}
