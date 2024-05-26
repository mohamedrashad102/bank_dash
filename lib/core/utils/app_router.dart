import 'package:bank_dash/layers/mobile_layout/overview/views/overview_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../initial_view.dart';

class AppRouter {
  static String account = '/account';
  static String creditCards = '/creditCards';
  static String investments = '/investments';
  static String loans = '/loans';
  static String myPrivileges = '/myPrivileges';
  static String overview = '/overview';
  static String services = '/services';
  static String settings = '/settings';
  static String transactions = '/transactions';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const InitialView(),
      ),
      GoRoute(
        path: account,
        builder: (context, state) => Container(),
      ),
      GoRoute(
        path: creditCards,
        builder: (context, state) => Container(),
      ),
      GoRoute(
        path: investments,
        builder: (context, state) => Container(),
      ),
      GoRoute(
        path: loans,
        builder: (context, state) => Container(),
      ),
      GoRoute(
        path: myPrivileges,
        builder: (context, state) => Container(),
      ),
      GoRoute(
        path: overview,
        builder: (context, state) => const OverviewView(),
      ),
      GoRoute(
        path: services,
        builder: (context, state) => Container(),
      ),
      GoRoute(
        path: settings,
        builder: (context, state) => Container(),
      ),
      GoRoute(
        path: transactions,
        builder: (context, state) => Container(),
      ),
    ],
  );
}
