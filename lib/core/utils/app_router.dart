import 'package:bank_dash/layers/mobile_layout/home/views/home_view.dart';
import 'package:bank_dash/layers/mobile_layout/overview/views/overview_view.dart';
import 'package:bank_dash/layers/mobile_layout/transactions/views/transactions_view.dart';
import 'package:go_router/go_router.dart';

import '../../layers/mobile_layout/account/views/account_view.dart';
import '../../layers/mobile_layout/credit_cards/widgets/credit_card_view.dart';
import '../../layers/mobile_layout/investments/views/investments_view.dart';
import '../../layers/mobile_layout/loans/views/loans_view.dart';
import '../../layers/mobile_layout/my_privileges/views/my_privileges_view.dart';
import '../../layers/mobile_layout/services/views/services_view.dart';
import '../../layers/mobile_layout/settings/views/settings_view.dart';

class AppRouter {
  static const String account = '/account';
  static const String creditCards = '/creditCards';
  static const String investments = '/investments';
  static const String loans = '/loans';
  static const String myPrivileges = '/myPrivileges';
  static const String overview = '/overview';
  static const String services = '/services';
  static const String settings = '/settings';
  static const String transactions = '/transactions';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: account,
        builder: (context, state) => const AccountsView(),
      ),
      GoRoute(
        path: creditCards,
        builder: (context, state) => const CreditCardView(),
      ),
      GoRoute(
        path: investments,
        builder: (context, state) => const InvestmentsView(),
      ),
      GoRoute(
        path: loans,
        builder: (context, state) => const LoansView(),
      ),
      GoRoute(
        path: myPrivileges,
        builder: (context, state) => const MyPrivilegesView(),
      ),
      GoRoute(
        path: overview,
        builder: (context, state) => const OverviewView(),
      ),
      GoRoute(
        path: services,
        builder: (context, state) => const ServicesView(),
      ),
      GoRoute(
        path: settings,
        builder: (context, state) => const SettingsView(),
      ),
      GoRoute(
        path: transactions,
        builder: (context, state) => const TransactionsView(),
      ),
    ],
  );
}
