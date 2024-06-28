import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/desktop_transactions_bottom_section.dart';
import '../widgets/desktop_transactions_top_section.dart';

class DesktopTransactionsView extends StatelessWidget {
  const DesktopTransactionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        DesktopTransactionsTopSection(),
        Gap(20),
        DesktopTransactionsBottomSection(),
      ],
    );
  }
}
