import 'package:bank_dash/core/widgets/custom_divder.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'dash_logo.dart';
import 'drawer_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
    required this.platformNumber,
  });
  final int platformNumber;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(),
      backgroundColor: Colors.white,
      elevation: 0,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(26),
            const SafeArea(
              bottom: false,
              child: DashLogo(),
            ),
            const CustomDivider(),
            DrawerListView(
              platformNumber: platformNumber,
            ),
          ],
        ),
      ),
    );
  }
}
