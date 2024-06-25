import 'package:bank_dash/layers/mobile_layout/settings/models/settings_tab_bar_model.dart';
import 'package:bank_dash/layers/mobile_layout/settings/widgets/edit_profile_tab_body.dart';
import 'package:bank_dash/layers/mobile_layout/settings/widgets/security_tab_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/preference_tab_body.dart';

part 'settings_tab_bar_cubit_state.dart';

class SettingsTabBarCubit extends Cubit<SettingsTabBarCubitState> {
  SettingsTabBarCubit() : super(TabBarInitialState());

  static SettingsTabBarCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  final List<SettingsTabBarModel> tabs = const [
    SettingsTabBarModel(
      title: 'Edit Profile',
      body: EditProfileTabBody(),
    ),
    SettingsTabBarModel(
      title: 'Preference',
      body: PreferenceTabBody(),
    ),
    SettingsTabBarModel(
      title: 'Security',
      body: SecurityTabBody(),
    ),
  ];

  Widget get currentTabBody => tabs[currentIndex].body;

  void changeIndex(int index) {
    currentIndex = index;
    emit(TabBarChangedState());
  }
}
