import 'package:bank_dash/core/cubits/drawer_cubit/drawer_cubit.dart';
import 'package:bank_dash/core/widgets/custom_desktop_body.dart';
import 'package:bank_dash/core/widgets/desktop_app_bar.dart';

import 'package:bank_dash/layers/desktop_layout/account/views/desktop_account_view.dart';

import 'package:bank_dash/layers/desktop_layout/investment/views/desktop_investment_view.dart';

import 'package:flutter/material.dart';

class DesktopHomeViewBody extends StatelessWidget {
  const DesktopHomeViewBody({
    super.key,
    required this.cubit,
  });

  final DrawerCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: DesktopAppBar(
              title: cubit.title,
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomDesktopBody(

              currentDesktopViewBody: DesktopAccountView(),

              currentDesktopViewBody: DesktopInvestmentView(),

            ),
          ),
        ],
      ),
    );
  }
}
