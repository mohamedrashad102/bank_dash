import 'package:bank_dash/core/widgets/custom_txt_button.dart';
import 'package:bank_dash/layers/mobile_layout/transactions/cubits/transactions_tab_bar_cubit.dart';
import 'package:bank_dash/layers/mobile_layout/transactions/widgets/recent_transactions_page_slider_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecentTransactionsPageSlider extends StatelessWidget {
  const RecentTransactionsPageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionsTabBarCubit, TransactionsTabBarCubitState>(
      builder: (context, state) {
        final cubit = TransactionsTabBarCubit.get(context);
        return Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomTxtButton(
              txt: 'Previous',
              isActive: cubit.isPreviousButtonActive,
              onPressed: () => cubit.previousPages(),
            ),
            const RecentTransactionsPageSliderItems(),
            CustomTxtButton(
              txt: 'Next',
              isActive: cubit.isNextButtonActive,
              onPressed: () => cubit.nextPages(),
            ),
          ],
        );
      },
    );
  }
}
