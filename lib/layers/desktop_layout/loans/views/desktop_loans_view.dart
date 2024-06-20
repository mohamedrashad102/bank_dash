import 'package:bank_dash/core/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/desktop_loans_items_section.dart';
import '../widgets/loan_table.dart';

class DesktopLoansView extends StatelessWidget {
  const DesktopLoansView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        DesktopLoansItemsSection(),
        Gap(20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleText(
              title: 'Active Loans Overview',
            ),
            Gap(16),
            DesktopLoanTable(),
          ],
        ),
      ],
    );
  }
}
