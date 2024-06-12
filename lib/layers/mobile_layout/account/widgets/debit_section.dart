import 'package:bank_dash/core/widgets/title_text.dart';
import 'package:bank_dash/layers/mobile_layout/account/widgets/debit_chart.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DebitSection extends StatelessWidget {
  const DebitSection({
    super.key,
    this.width = 10,
  });
  final double width;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleText(title: 'Debit & Credit Overview'),
        const Gap(12),
        DebitChart(
          width: width,
        ),
      ],
    );
  }
}
