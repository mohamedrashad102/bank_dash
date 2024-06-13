import 'package:bank_dash/core/models/common_item_model.dart';
import 'package:bank_dash/core/utils/app_styles/app_styles.dart';
import 'package:bank_dash/core/widgets/custom_icon.dart';
import 'package:bank_dash/layers/mobile_layout/account/widgets/title_date_column.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'investment_value_col.dart';

class DesktopInvestmentItem extends StatelessWidget {
  const DesktopInvestmentItem({
    super.key,
    required this.commonItemModel,
    this.textColor,
  });
  final CommonItemModel commonItemModel;
  final Color? textColor;
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
        InvestmentValueCol(
          investmentItemModel: commonItemModel,
        ),
        const Spacer(),
        Text(
          commonItemModel.amount.contains('%')
              ? commonItemModel.amount
              : '\$${commonItemModel.amount}',
          style:
              AppStyles.medium.fontSize12(context).copyWith(color: textColor),
        ),
      ],
    );
  }
}
