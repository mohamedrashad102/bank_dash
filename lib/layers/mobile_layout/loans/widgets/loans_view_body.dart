import 'package:bank_dash/layers/mobile_layout/loans/widgets/loans_items_section.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'loans_overview_section.dart';

class LoansViewBody extends StatelessWidget {
  const LoansViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            LoansItemsSection(),
            Gap(22),
            LoansOverviewSection(),
          ],
        ),
      ),
    );
  }
}
