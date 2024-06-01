import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/widgets/custom_scaffold.dart';
import '../widgets/all_account_items.dart';
import '../widgets/debit_section.dart';
import '../widgets/inovice_section.dart';
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
              DebitSection(),
              InoviceSection()
            ],
          ),
        ),
      ),
    );
  }
}
