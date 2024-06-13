import 'package:bank_dash/core/models/common_item_model.dart';
import 'package:bank_dash/core/utils/app_colors.dart';
import 'package:bank_dash/core/utils/assets.dart';
import 'package:bank_dash/layers/desktop_layout/account/widgets/desktop_last_transction_item.dart';
import 'package:flutter/material.dart';

class DesktopTransactionItems extends StatelessWidget {
  const DesktopTransactionItems({
    super.key,
  });
  static List<CommonItemModel> transactionItems = const [
    CommonItemModel(
      title: 'Spotify Subscription',
      amount: '-150',
      icon: Assets.imagesSpotify,
      status: 'pending',
      category: 'Tansfer',
      cardNumber: '1234 ****',
      bgColor: AppColors.bgColorMintGreen,
      date: '25 Jan 2021',
    ),
    CommonItemModel(
      title: 'Mobile Service',
      amount: '-340',
      status: 'completed',
      category: 'Shopping',
      cardNumber: '1234 ****',
      icon: Assets.imagesMobileService,
      bgColor: AppColors.bgColorBlue,
      date: '25 Jan 2021',
    ),
    CommonItemModel(
      title: 'Emilly Wilson',
      amount: '+750',
      status: 'completed',
      cardNumber: '1234 ****',
      category: 'Services',
      icon: Assets.imagesPinkPerson,
      bgColor: AppColors.bgColorPink,
      date: '25 Jan 2021',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(25),
      child: Column(
        children: transactionItems
            .asMap()
            .entries
            .map(
              (e) => Padding(
                padding: e.key == 1
                    ? const EdgeInsets.symmetric(vertical: 10.0)
                    : EdgeInsets.zero,
                child: DesktopLastTransctionItem(
                  commonItemModel: e.value,
                  textColor: e.value.amount.contains('-')
                      ? AppColors.decrementColor
                      : AppColors.incrementColor,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
