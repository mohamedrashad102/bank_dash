import 'package:bank_dash/core/widgets/custom_visibility.dart';
import 'package:bank_dash/core/cubits/drawer_cubit/recent_transactions/recent_transactions_cubit.dart';
import 'package:bank_dash/layers/mobile_layout/transactions/widgets/recent_transactions_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecentTransactionsTabsBody extends StatelessWidget {
  const RecentTransactionsTabsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecentTransactionsCubit, RecentTransactionsCubitState>(
      builder: (context, state) {
        final cubit = RecentTransactionsCubit.get(context);
        final width = MediaQuery.of(context).size.width;
        double height;
        if (width > 430) {
          height = 300 + width * 0.1;
        } else {
          height = 300 + width * 0.05;
        }
        return Container(
          height: height,
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: cubit.pageTransactions
                .map((transaction) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          RecentTransactionsItem(transactionModel: transaction),
                          CustomVisibility(
                            isVisible:
                                cubit.pageTransactions.last != transaction,
                            child: const Divider(),
                          ),
                        ],
                      ),
                    ))
                .toList(),
          ),
        );
      },
    );
  }
}
