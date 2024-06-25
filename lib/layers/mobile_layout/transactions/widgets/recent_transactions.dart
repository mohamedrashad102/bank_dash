import 'package:bank_dash/core/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'recent_transactions_page_slider.dart';
import 'recent_transactions_tabs_body.dart';
import 'recent_transactions_tabs_title.dart';

class RecentTransactions extends StatelessWidget {
  const RecentTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText(title: 'Recent Transactions'),
        Gap(12),
        RecentTransactionsTabsTitle(),
        Gap(12),
        RecentTransactionsTabsBody(),
        Gap(12),
        RecentTransactionsPageSlider(),
      ],
    );
  }
}
