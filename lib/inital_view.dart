import 'package:bank_dash/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InitialView extends StatelessWidget {
  const InitialView({super.key});

  static List<String> views = [
    AppRouter.account,
    AppRouter.creditCards,
    AppRouter.investments,
    AppRouter.loans,
    AppRouter.myPrivileges,
    AppRouter.overview,
    AppRouter.services,
    AppRouter.settings,
    AppRouter.transactions,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: views
              .map((view) => Card(
                    child: ListTile(
                      title: Text(
                        view,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () => context.push(view),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
