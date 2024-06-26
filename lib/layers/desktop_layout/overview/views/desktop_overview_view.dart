import 'package:bank_dash/core/widgets/title_text.dart';
import 'package:bank_dash/layers/mobile_layout/overview/widgets/recent_transaction.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'desktop_over_view_my_card.dart';

class DesktopOverviewView extends StatelessWidget {
  const DesktopOverviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 2,
              child: DesktopOverViewMyCard(),
            ),
            Expanded(
              child: DesktopOverviewResentTransaction(),
            ),
          ],
        ),
      ],
    );
  }
}

class DesktopOverviewResentTransaction extends StatelessWidget {
  const DesktopOverviewResentTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TitleText(title: 'Recent Transactions'),
        Gap(12),
        SizedBox(
          height: 350,
          child: RecentTransaction(),
        )
      ],
    );
  }
}
