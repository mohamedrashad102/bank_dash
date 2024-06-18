import 'package:bank_dash/core/models/common_item_model.dart';
import 'package:bank_dash/core/utils/app_colors.dart';
import 'package:bank_dash/core/utils/assets.dart';
import 'package:bank_dash/core/widgets/custom_common_item.dart';
import 'package:flutter/material.dart';

class TransactionItems extends StatelessWidget {
  const TransactionItems({
    super.key,
  });
<<<<<<< HEAD
<<<<<<< HEAD
  static List<CommonItemModel> transactionItems = const [
    CommonItemModel(
=======
  static List<CommonItemModel> transactionItems = [
    const CommonItemModel(
>>>>>>> 86a6f1b (edit drawer for desktop and mobile)
=======
  static List<CommonItemModel> transactionItems = [
    const CommonItemModel(
>>>>>>> refs/rewritten/try-to-fixed-it
      title: 'Spotify Subscription',
      amount: '-150',
      icon: Assets.imagesSpotify,
      bgColor: AppColors.bgColorMintGreen,
      subtitle: '25 Jan 2021',
    ),
    const CommonItemModel(
      title: 'Mobile Service',
      amount: '-340',
      icon: Assets.imagesMobileService,
      bgColor: AppColors.bgColorBlue,
      subtitle: '25 Jan 2021',
    ),
    const CommonItemModel(
      title: 'Emilly Wilson',
      amount: '+750',
      icon: Assets.imagesPinkPerson,
      bgColor: AppColors.bgColorPink,
      subtitle: '25 Jan 2021',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: transactionItems
            .asMap()
            .entries
            .map(
              (e) => Padding(
                padding: e.key == 1
                    ? const EdgeInsets.symmetric(vertical: 12.0)
                    : EdgeInsets.zero,
                child: CustomCommonItem(
                  commonItemModel: e.value,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
