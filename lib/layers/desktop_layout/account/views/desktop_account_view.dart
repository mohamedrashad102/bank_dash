import 'package:bank_dash/layers/desktop_layout/account/widgets/desktop_account_items.dart';
import 'package:bank_dash/layers/desktop_layout/account/widgets/last_transaction_and_my_cards.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/debit_section_and_invoice_section.dart';

class DesktopAccountView extends StatelessWidget {
  const DesktopAccountView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        DesktopAccountItems(),
        Gap(22),
        LastTransactionAndMyCards(),
        Gap(22),
        DebitSectionAndInvoiceSection()
      ],
    );
  }
}
