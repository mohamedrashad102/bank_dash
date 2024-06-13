import 'package:bank_dash/core/utils/app_colors.dart';
import 'package:bank_dash/core/widgets/custom_common_item.dart';
import 'package:bank_dash/core/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/models/common_item_model.dart';
import '../../../../core/utils/assets.dart';

class RecentTransaction extends StatelessWidget {
  const RecentTransaction({super.key});

  static List<CommonItemModel> recentTransactions = const [
    CommonItemModel(
      bgColor: AppColors.bgColorYellow,
      icon: Assets.imagesBlockCard,
      amount: '-850',
      subtitle: '28 January 2021',
      title: 'Deposit from my',
    ),
    CommonItemModel(
      bgColor: AppColors.bgColorBlue,
      icon: Assets.imagesDeposit,
      amount: '+2500',
      subtitle: '25 January 2021',
      title: 'Deposit Paypal',
    ),
    CommonItemModel(
      bgColor: AppColors.bgColorMintGreen,
      icon: Assets.imagesJemiWilson,
      amount: '+1700',
      subtitle: '12 January 2021',
      title: 'Jemi Wilson',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleText(title: 'Recent Transaction'),
        const Gap(12),
        Column(
          children: recentTransactions
              .map(
                (item) => Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: CustomCommonItem(
                    commonItemModel: item,
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
