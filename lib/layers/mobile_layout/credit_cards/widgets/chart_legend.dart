import 'package:bank_dash/layers/mobile_layout/credit_cards/widgets/legend1.dart';
import 'package:bank_dash/layers/mobile_layout/credit_cards/widgets/legend2.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ChartLegend extends StatelessWidget {
  const ChartLegend({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Legend1(),
        Gap(12),
        Legend2(),
      ],
    );
  }
}
