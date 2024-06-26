import 'package:bank_dash/layers/desktop_layout/overview/widgets/desktop_overview_balance_history.dart';
import 'package:bank_dash/layers/desktop_layout/overview/widgets/desktop_overview_quick_transfer.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DesktopOverviewBottomSection extends StatelessWidget {
  const DesktopOverviewBottomSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: DesktopOverviewQuickTransfer(),
        ),
        Gap(25),
        Expanded(
          flex: 2,
          child: DesktopOverviewBalanceHistory(),
        ),
      ],
    );
  }
}
