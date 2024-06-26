import 'package:bank_dash/core/cubits/drawer_cubit/recent_transactions/recent_transactions_cubit.dart';
import 'package:bank_dash/core/widgets/custom_txt_button.dart';
import 'package:bank_dash/layers/mobile_layout/transactions/widgets/recent_transactions_page_slider_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomTransactionsPageSlider extends StatelessWidget {
  const CustomTransactionsPageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecentTransactionsCubit, RecentTransactionsCubitState>(
      builder: (context, state) {
        final cubit = RecentTransactionsCubit.get(context);
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
