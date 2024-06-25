import 'package:bank_dash/layers/mobile_layout/settings/cubits/settings_tab_bar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'tab_bar_item.dart';

class SettingsTabBar extends StatelessWidget {
  const SettingsTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsTabBarCubit, SettingsTabBarCubitState>(
      builder: (context, state) {
        final tabBarCubit = SettingsTabBarCubit.get(context);
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: tabBarCubit.tabs
                  .asMap()
                  .entries
                  .map(
                    (entry) => TabBarItem(
                      text: entry.value.title,
                      isSelected: tabBarCubit.currentIndex == entry.key,
                      onTap: () => tabBarCubit.changeIndex(entry.key),
                    ),
                  )
                  .toList(),
            ),
            const Divider(
              height: 1,
              color: Color(0xFFEBEEF2),
            ),
          ],
        );
      },
    );
  }
}
