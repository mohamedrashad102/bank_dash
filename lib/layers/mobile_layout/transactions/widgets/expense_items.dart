import 'package:bank_dash/core/utils/app_styles/app_styles.dart';
import 'package:bank_dash/core/widgets/custom_visibility.dart';
import 'package:bank_dash/layers/mobile_layout/transactions/cubits/expense_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class ExpenseItems extends StatelessWidget {
  const ExpenseItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(10),
      child: BlocBuilder<ExpenseCubit, ExpenseCubitState>(
        builder: (context, state) {
          final cubit = ExpenseCubit.get(context);
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: cubit.expenses
                  .asMap()
                  .entries
                  .map(
                    (entry) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CustomVisibility(
                            isVisible: entry.key == cubit.currentIndex,
                            child: Text(
                              r'$' '${entry.value.price}',
                              style:
                                  AppStyles.medium.fontSize14(context).copyWith(
                                        color: const Color(0xff343C6A),
                                      ),
                            ),
                          ),
                          InkWell(
                            onTap: () => cubit.changeChangeIndex(entry.key),
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 500),
                              width: 40,
                              height:
                                  cubit.calcPercentage(entry.value.price),
                              decoration: BoxDecoration(
                                color: entry.key == cubit.currentIndex
                                    ? const Color(0xff16DBCC)
                                    : const Color(0xffEDF0F7),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          const Gap(9),
                          Text(
                            entry.value.date.name,
                            style: AppStyles.regular.fontSize12(context),
                          ),
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
          );
        },
      ),
    );
  }
}
