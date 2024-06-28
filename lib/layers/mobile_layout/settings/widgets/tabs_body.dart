import 'package:bank_dash/layers/mobile_layout/settings/cubits/settings_tab_bar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TabsBody extends StatelessWidget {
  const TabsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsTabBarCubit, SettingsTabBarCubitState>(
      builder: (context, state) {
        return SettingsTabBarCubit.get(context).currentMobileTabBody;
      },
    );
  }
}
