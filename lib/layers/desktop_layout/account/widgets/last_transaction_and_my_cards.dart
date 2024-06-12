import 'package:bank_dash/layers/mobile_layout/account/widgets/my_cards_account_section.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'desktop_last_transaction_section.dart';

class LastTransactionAndMyCards extends StatelessWidget {
  const LastTransactionAndMyCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 2,
          child: DesktopLastTransactionSection(),
        ),
        Gap(30),
        Expanded(child: MyCardsAccountSection())
      ],
    );
  }
}
