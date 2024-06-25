import 'package:bank_dash/layers/mobile_layout/settings/cubits/settings_tab_bar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../../core/widgets/custom_scaffold.dart';
import '../widgets/settings_tab_bar.dart';

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

class TabsBody extends StatelessWidget {
  const TabsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsTabBarCubit, SettingsTabBarCubitState>(
      builder: (context, state) {
        return SettingsTabBarCubit.get(context).currentTabBody;
      },
    );
  }
}
