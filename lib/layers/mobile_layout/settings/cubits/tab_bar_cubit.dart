import 'package:bank_dash/layers/mobile_layout/settings/models/tab_bar_model.dart';
import 'package:bank_dash/layers/mobile_layout/settings/widgets/edit_profile_tab_body.dart';
import 'package:bank_dash/layers/mobile_layout/settings/widgets/security_tab_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/preference_tab_body.dart';

part 'tab_bar_cubit_state.dart';

class TabBarCubit extends Cubit<TabBarCubitState> {
  TabBarCubit() : super(TabBarInitialState());

  static TabBarCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  final List<TabBarModel> tabs = const [
    TabBarModel(
      title: 'Edit Profile',
      body: EditProfileTabBody(),
    ),
    TabBarModel(
      title: 'Preference',
      body: PreferenceTabBody(),
    ),
    TabBarModel(
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
