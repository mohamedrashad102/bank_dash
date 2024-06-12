import 'package:bank_dash/layers/mobile_layout/account/widgets/all_account_items.dart';
import 'package:bank_dash/layers/mobile_layout/account/widgets/debit_section.dart';
import 'package:bank_dash/layers/mobile_layout/account/widgets/inovice_section.dart';
import 'package:bank_dash/layers/mobile_layout/account/widgets/my_cards_account_section.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../mobile_layout/account/widgets/last_transaction_section.dart';

class AcountViewBody extends StatelessWidget {
  const AcountViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            AllAccountItems(),
            Gap(22),
            MobileLastTransactionSection(),
            Gap(22),
            MyCardsAccountSection(),
            Gap(22),
            DebitSection(),
            Gap(22),
            InoviceSection()
          ],
        ),
      ),
    );
  }
}
