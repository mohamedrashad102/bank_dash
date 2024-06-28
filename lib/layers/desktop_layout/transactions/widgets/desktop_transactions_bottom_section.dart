import 'package:bank_dash/core/widgets/title_text.dart';
import 'package:bank_dash/layers/desktop_layout/transactions/widgets/desktop_transactions_table.dart';
import 'package:bank_dash/layers/desktop_layout/transactions/widgets/desktop_transactions_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/widgets/custom_transactions_page_slider.dart';

class DesktopTransactionsBottomSection extends StatelessWidget {
  const DesktopTransactionsBottomSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText(title: 'Recent Transactions'),
        Gap(12),
        DesktopTransactionsTabs(),
        Gap(20),
        DesktopTransactionsTable(),
        Gap(20),
        CustomTransactionsPageSlider(),
      ],
    );
  }
}
