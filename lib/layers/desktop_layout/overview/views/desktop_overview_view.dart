import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/desktop_overview_bottom_section.dart';
import '../widgets/desktop_overview_middle_section.dart';
import '../widgets/desktop_overview_top_section.dart';

class DesktopOverviewView extends StatelessWidget {
  const DesktopOverviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        DesktopOverviewTopSection(),
        Gap(20),
        DesktopOverviewMiddleSection(),
        Gap(20),
        DesktopOverviewBottomSection(),
      ],
    );
  }
}
