import 'package:bank_dash/core/utils/assets.dart';
import 'package:bank_dash/layers/mobile_layout/account/models/account_item_model.dart';
import 'package:bank_dash/layers/mobile_layout/account/widgets/account_item.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_colors.dart';

class AllAccountItems extends StatelessWidget {
  const AllAccountItems({
    super.key,
  });
  static List<AccountItemModel> items = [
    AccountItemModel(
      title: 'My Balance',
      value: '12,750',
      icon: Assets.imagesMoneyTag,
      bgColor: AppColors.bgColorYellow,
    ),
    AccountItemModel(
      title: 'Income',
      value: '5,600',
      icon: Assets.imagesIncome,
      bgColor: AppColors.bgColorBlue,
    ),
    AccountItemModel(
      title: 'Expense',
      value: '3,450',
      icon: Assets.imagesExpense,
      bgColor: AppColors.bgColorPink,
    ),
    AccountItemModel(
      title: 'My Investments',
      value: '7,900',
      icon: Assets.imagesSaving,
      bgColor: AppColors.bgColorTeal,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: AccountItem(
                accountItemModel: items[0],
              ),
            ),
            const Gap(15),
            Expanded(
              child: AccountItem(
                accountItemModel: items[1],
              ),
            )
          ],
        ),
        const Gap(15),
        Row(
          children: [
            Expanded(
              child: AccountItem(
                accountItemModel: items[2],
              ),
            ),
            const Gap(15),
            Expanded(
              child: AccountItem(
                accountItemModel: items[3],
              ),
            )
          ],
        )
      ],
    );
  }
}
