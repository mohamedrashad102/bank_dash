import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'desktop_settings_tab_bar.dart';
import 'desktop_settings_tabs_body.dart';

class DesktopSettingsView extends StatelessWidget {
  const DesktopSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DesktopSettingsTabBar(),
          Gap(30),
          DesktopSettingsTabsBody(),
        ],
      ),
    );
  }
}
