import 'package:bank_dash/core/extensions/custom_padding_extension.dart';
import 'package:bank_dash/layers/mobile_layout/overview/widgets/my_cards.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_scaffold.dart';
import '../widgets/my_expense.dart';
import '../widgets/recent_transactions.dart';

class TransactionsView extends StatelessWidget {
  const TransactionsView({super.key});

  static List<Widget> sections = [
    const MyCards(),
    const MyExpense(),
    const RecentTransactions(),
  ];

  @override
  Widget build(BuildContext context) {
    return MobileCustomScaffold(
      title: 'Transactions',
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: sections
              .map((section) => Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: section,
                  ))
              .toList(),
        ).withPadding(),
      ),
    );
  }
}
