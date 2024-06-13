import 'package:bank_dash/core/extensions/custom_padding_extension.dart';
import 'package:bank_dash/layers/mobile_layout/overview/widgets/my_cards.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/widgets/custom_scaffold.dart';

class TransactionsView extends StatelessWidget {
  const TransactionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'Transactions',
      body: const Column(
        children: [
          Gap(12),
          MyCards(),
        ],
      ).withPadding(),
    );
  }
}
