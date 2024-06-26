import 'package:bank_dash/core/models/common_item_model.dart';
import 'package:bank_dash/core/utils/app_styles/app_styles.dart';
import 'package:bank_dash/core/widgets/custom_icon.dart';
import 'package:bank_dash/layers/mobile_layout/account/widgets/title_date_column.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_colors.dart';

class CustomCommonItem extends StatelessWidget {
  const CustomCommonItem({
    super.key,
    required this.commonItemModel,
  });
  final CommonItemModel commonItemModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomIcon(
          icon: commonItemModel.icon,
          bgColor: commonItemModel.bgColor,
        ),
        const Gap(10),
        TitleDateColumn(transactionItemModel: commonItemModel),
        const Spacer(),
        Text(
          commonItemModel.amount.contains('%')
              ? commonItemModel.amount
              : '\$${commonItemModel.amount}',
          style: AppStyles.medium.fontSize12(context).copyWith(
              color: commonItemModel.amount.contains('-')
                  ? AppColors.decrementColor
                  : AppColors.incrementColor),
        ),
      ],
    );
  }
}
