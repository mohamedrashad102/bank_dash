import 'package:bank_dash/core/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/models/common_item_model.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/widgets/custom_common_item.dart';
import 'desktop_over_view_my_card.dart';

class DesktopOverviewView extends StatelessWidget {
  const DesktopOverviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: DesktopOverViewMyCard(),
            ),
            Gap(25),
            Expanded(
              child: DesktopOverviewResentTransaction(),
            ),
          ],
        ),
      ],
    );
  }
}

class DesktopOverviewResentTransaction extends StatelessWidget {
  const DesktopOverviewResentTransaction({super.key});

  static List<CommonItemModel> recentTransactions = [
    const CommonItemModel(
      bgColor: AppColors.bgColorYellow,
      icon: Assets.imagesBlockCard,
      amount: '-850',
      subtitle: '28 January 2021',
      title: 'Deposit from my',
    ),
    const CommonItemModel(
      bgColor: AppColors.bgColorBlue,
      icon: Assets.imagesDeposit,
      amount: '+2500',
      subtitle: '25 January 2021',
      title: 'Deposit Paypal',
    ),
    const CommonItemModel(
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
        const TitleText(title: 'Recent Transactions'),
        const Gap(12),
        Container(
          height: 215,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          padding: const EdgeInsets.all(15),
          child: Column(
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
        )
      ],
    );
  }
}
