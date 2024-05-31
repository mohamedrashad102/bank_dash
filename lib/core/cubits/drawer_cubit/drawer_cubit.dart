import 'package:bank_dash/core/models/drawer_model.dart';
import 'package:bank_dash/core/utils/app_router.dart';
import 'package:bank_dash/core/utils/assets.dart';
import 'package:bank_dash/layers/mobile_layout/overview/views/overview_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../layers/mobile_layout/account/widgets/account_view.dart';
import '../../../layers/mobile_layout/credit_cards/widgets/credit_card_view.dart';
import '../../../layers/mobile_layout/investments/views/investments_view.dart';
import '../../../layers/mobile_layout/loans/views/loans_view.dart';
import '../../../layers/mobile_layout/my_privileges/views/my_privileges_view.dart';
import '../../../layers/mobile_layout/services/views/services_view.dart';
import '../../../layers/mobile_layout/settings/views/settings_view.dart';
import '../../../layers/mobile_layout/transactions/views/transactions_view.dart';

part 'drawer_state.dart';

class DrawerCubit extends Cubit<DrawerCubitState> {
  DrawerCubit() : super(DrawerInitial());

  int selectedIndex = 0;

  final List<DrawerModel> drawerItems = const [
    DrawerModel(
      title: 'Dashboard',
      icon: Assets.imagesHomeIcon,
      path: AppRouter.overview,
      view: OverviewView(),
    ),
    DrawerModel(
      title: 'Transactions',
      icon: Assets.imagesTransactionsIcon,
      path: AppRouter.transactions,
      view: TransactionsView(),
    ),
    DrawerModel(
      title: 'Accounts',
      icon: Assets.imagesAccountIcon,
      path: AppRouter.account,
      view: AccountView(),
    ),
    DrawerModel(
      title: 'Investments',
      icon: Assets.imagesInvestmentsIcon,
      path: AppRouter.investments,
      view: InvestmentsView(),
    ),
    DrawerModel(
      title: 'Credit Cards',
      icon: Assets.imagesCreditCardsIcon,
      path: AppRouter.creditCards,
      view: CreditCardView(),
    ),
    DrawerModel(
      title: 'Loans',
      icon: Assets.imagesLoansIcon,
      path: AppRouter.loans,
      view: LoansView(),
    ),
    DrawerModel(
      title: 'Services',
      icon: Assets.imagesServicesIcon,
      path: AppRouter.services,
      view: ServicesView(),
    ),
    DrawerModel(
      title: 'My Privileges',
      icon: Assets.imagesMyPrivilegesIcon,
      path: AppRouter.myPrivileges,
      view: MyPrivilegesView(),
    ),
    DrawerModel(
      title: 'Settings',
      icon: Assets.imagesSettingsIcon,
      path: AppRouter.settings,
      view: SettingsView(),
    ),
  ];

  static DrawerCubit get(context) => BlocProvider.of(context);

  void changeDrawer(int index) {
    selectedIndex = index;
    emit(DrawerChanged());
  }

  Widget currentView() => drawerItems[selectedIndex].view;
}
