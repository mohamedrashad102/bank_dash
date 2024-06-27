import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/widgets/custom_scaffold.dart';
import '../widgets/settings_tab_bar.dart';
import '../widgets/tabs_body.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return MobileCustomScaffold(
      title: 'Settings',
      body: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SettingsTabBar(),
            Gap(20),
            Expanded(child: TabsBody()),
          ],
        ),
      ),
    );
  }
}
