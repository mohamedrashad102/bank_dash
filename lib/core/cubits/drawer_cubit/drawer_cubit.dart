import 'package:bank_dash/core/models/drawer_model.dart';
import 'package:bank_dash/core/utils/app_router.dart';
import 'package:bank_dash/core/utils/assets.dart';
import 'package:bank_dash/layers/desktop_layout/loans/views/desktop_loans_view.dart';
import 'package:bank_dash/layers/desktop_layout/services/views/desktop_services_view.dart';
import 'package:bank_dash/layers/mobile_layout/overview/views/overview_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../layers/desktop_layout/credit_cards/views/desktop_credit_cards_view.dart';
import '../../../layers/desktop_layout/investment/views/desktop_investment_view.dart';
import '../../../layers/mobile_layout/account/views/account_view.dart';
import '../../../layers/mobile_layout/credit_cards/views/credit_cards_view.dart';
import '../../../layers/mobile_layout/investments/views/investments_view.dart';
import '../../../layers/mobile_layout/loans/views/loans_view.dart';
import '../../../layers/mobile_layout/services/views/services_view.dart';
import '../../../layers/mobile_layout/settings/views/settings_view.dart';
import '../../../layers/mobile_layout/transactions/views/transactions_view.dart';

part 'drawer_state.dart';

class DrawerCubit extends Cubit<DrawerCubitState> {
  DrawerCubit() : super(DrawerInitial());

  int selectedIndex = 0;
  String title = 'Overview';

  final List<DrawerModel> mobileDrawerItems = const [
    DrawerModel(
      title: 'Overview',
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
      view: AccountsView(),
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
      view: CreditCardsView(),
    ),
    DrawerModel(
      title: 'Loans',
      icon: Assets.imagesLoansIcon,
      path: AppRouter.loans,
      view: LoansView(),
    ),
    DrawerModel(
      title: 'Services',
      icon: Assets.imagesService,
      path: AppRouter.services,
      view: ServicesView(),
    ),
    DrawerModel(
      title: 'Settings',
      icon: Assets.imagesSettings,
      path: AppRouter.settings,
      view: SettingsView(),
    ),
  ];
  final List<DrawerModel> desktopDrawerItems = const [
    DrawerModel(
      title: 'Overview',
      icon: Assets.imagesHomeIcon,
      view: DesktopCreditCardsView(), // put DesktopOverviewView() here
    ),
    DrawerModel(
      title: 'Transactions',
      icon: Assets.imagesTransactionsIcon,
      view: DesktopCreditCardsView(), // put DesktopTransactionsView() here
    ),
    DrawerModel(
      title: 'Accounts',
      icon: Assets.imagesAccountIcon,
      view: AccountsView(),
    ),
    DrawerModel(
      title: 'Investments',
      icon: Assets.imagesInvestmentsIcon,
      view: DesktopInvestmentView(),
    ),
    DrawerModel(
      title: 'Credit Cards',
      icon: Assets.imagesCreditCardsIcon,
      view: DesktopCreditCardsView(),
    ),
    DrawerModel(
      title: 'Loans',
      icon: Assets.imagesLoansIcon,
      view: DesktopLoansView(),
    ),
    DrawerModel(
      title: 'Services',
      icon: Assets.imagesService,
      view: DesktopServicesView(),
    ),
    DrawerModel(
      title: 'Settings',
      icon: Assets.imagesSettings,
      view: DesktopCreditCardsView(), // put DesktopSettingsView() here
    ),
  ];
  static DrawerCubit get(context) => BlocProvider.of(context);

  void changeDrawer(int index) {
    selectedIndex = index;
    title = desktopDrawerItems[selectedIndex].title;
    emit(DrawerChanged());
  }

  Widget currentView() => mobileDrawerItems[selectedIndex].view;
  Widget currentDesktopView() => desktopDrawerItems[selectedIndex].view;
  Widget currentMobileView() => mobileDrawerItems[selectedIndex].view;
}
