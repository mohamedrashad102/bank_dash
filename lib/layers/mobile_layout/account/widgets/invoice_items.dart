import 'package:bank_dash/core/models/common_item_model.dart';
import 'package:bank_dash/core/utils/app_colors.dart';
import 'package:bank_dash/core/utils/assets.dart';
import 'package:bank_dash/core/widgets/custom_common_item.dart';
import 'package:flutter/material.dart';

class InvoiceItems extends StatelessWidget {
  const InvoiceItems({
    super.key,
  });
<<<<<<< HEAD
  static List<CommonItemModel> invoices = const [
    CommonItemModel(
=======
  static List<CommonItemModel> invoices = [
    const CommonItemModel(
>>>>>>> 86a6f1b (edit drawer for desktop and mobile)
      title: 'Apple Store',
      amount: '450',
      bgColor: AppColors.bgColorMintGreen,
      icon: Assets.imagesApple,
      subtitle: '5h ago',
    ),
    const CommonItemModel(
      title: 'Abdo',
      amount: '450',
      bgColor: AppColors.bgColorYellow,
      icon: Assets.imagesUserYellow,
      subtitle: '10h ago',
    ),
    const CommonItemModel(
      title: 'plastation',
      amount: '750',
      bgColor: AppColors.bgColorBlue,
      icon: Assets.imagesPlaystation,
      subtitle: '7 days ago',
    ),
    const CommonItemModel(
      title: 'Rashd',
      amount: '50',
      bgColor: AppColors.bgColorPink,
      icon: Assets.imagesPinkPerson,
      subtitle: '10 days ago',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: invoices
            .map((e) => Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: CustomCommonItem(commonItemModel: e),
                ))
            .toList(),
      ),
    );
  }
}
