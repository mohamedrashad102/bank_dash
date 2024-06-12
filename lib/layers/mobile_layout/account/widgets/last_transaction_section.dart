import 'package:bank_dash/core/widgets/title_text.dart';
import 'package:bank_dash/layers/mobile_layout/account/widgets/transaction_items.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MobileLastTransactionSection extends StatelessWidget {
  const MobileLastTransactionSection({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText(title: 'Last Transaction'),
        Gap(12),
        TransactionItems(),
      ],
    );
  }
}
