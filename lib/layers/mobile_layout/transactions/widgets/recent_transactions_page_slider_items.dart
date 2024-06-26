import 'package:bank_dash/layers/mobile_layout/transactions/cubits/transactions_tab_bar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'recent_transactions_page_slider_item.dart';

class RecentTransactionsPageSliderItems extends StatelessWidget {
  const RecentTransactionsPageSliderItems({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionsTabBarCubit, TransactionsTabBarCubitState>(
      builder: (context, state) {
        final cubit = TransactionsTabBarCubit.get(context);
        return Row(
          children: List.generate(
            cubit.lastPage - cubit.startPage,
            (index) => RecentTransactionsPageSliderItem(
              index: cubit.startPage + index,
              isSelected: cubit.pageIndex == cubit.startPage + index,
            ),
          ),
        );
      },
    );
  }
}
