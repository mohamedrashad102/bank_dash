import 'package:bank_dash/layers/desktop_layout/overview/widgets/desktop_over_view_my_card.dart';
import 'package:bank_dash/layers/desktop_layout/overview/widgets/desktop_overview_resent_transaction.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DesktopOverviewTopSection extends StatelessWidget {
  const DesktopOverviewTopSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: DesktopOverViewMyCard(),
        ),
        Gap(25),
        Expanded(
          child: DesktopOverviewResentTransaction(),
        ),
      ],
    );
  }
}
