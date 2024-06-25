import 'package:bank_dash/layers/mobile_layout/settings/widgets/tab_bar_item.dart';
import 'package:bank_dash/layers/mobile_layout/transactions/cubits/transactions_tab_bar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecentTransactionsTabsTitle extends StatelessWidget {
  const RecentTransactionsTabsTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionsTabBarCubit, TransactionsTabBarCubitState>(
      builder: (context, state) {
        final cubit = TransactionsTabBarCubit.get(context);
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: cubit.tabsTitles
              .asMap()
              .entries
              .map(
                (entry) => TabBarItem(
                  text: entry.value,
                  isSelected: cubit.tabIndex == entry.key,
                  onTap: () {
                    cubit.changeTabIndex(entry.key);
                  },
                ),
              )
              .toList(),
        );
      },
    );
  }
}
