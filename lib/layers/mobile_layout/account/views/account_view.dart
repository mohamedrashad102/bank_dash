import 'package:bank_dash/core/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/widgets/custom_scaffold.dart';
import '../widgets/all_account_items.dart';
import '../widgets/despite_chart.dart';
import '../widgets/last_transaction_section.dart';
import '../widgets/my_cards_section.dart';

class AccountsView extends StatelessWidget {
  const AccountsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      title: 'Account',
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            children: [
              AllAccountItems(),
              Gap(22),
              LastTransactionSection(),
              Gap(22),
              MyCardsSection(),
              Gap(22),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleText(title: 'Debit & Credit Overview'),
                  Gap(12),
                  DespiteChart(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
