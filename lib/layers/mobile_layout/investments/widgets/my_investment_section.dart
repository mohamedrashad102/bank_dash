import 'package:bank_dash/core/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'my_investment_items.dart';

class MyInvestmentSection extends StatelessWidget {
  const MyInvestmentSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText(title: 'My Investment'),
        Gap(12),
        MyInvestmentItems()
      ],
    );
  }
}
