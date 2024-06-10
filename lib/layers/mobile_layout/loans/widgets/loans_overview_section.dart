import 'package:bank_dash/core/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import 'loans_overview_content.dart';

class LoansOverviewSection extends StatelessWidget {
  const LoansOverviewSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText(title: 'Active Loans Overview'),
        Gap(12),
        LoansOverviewContent()
      ],
    );
  }
}
