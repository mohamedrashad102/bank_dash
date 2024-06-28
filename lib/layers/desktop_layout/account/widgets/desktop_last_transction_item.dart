import 'package:bank_dash/core/models/common_item_model.dart';
import 'package:bank_dash/core/utils/app_styles/app_styles.dart';
import 'package:bank_dash/core/widgets/custom_icon.dart';
import 'package:bank_dash/layers/mobile_layout/account/widgets/title_date_column.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'last_transaction_text.dart';

class DesktopLastTransctionItem extends StatelessWidget {
  const DesktopLastTransctionItem({
    super.key,
    required this.commonItemModel,
    this.textColor,
  });
  final CommonItemModel commonItemModel;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    List<Widget> columns = [
      Row(
        children: [
          CustomIcon(
            icon: commonItemModel.icon,
            bgColor: commonItemModel.bgColor,
          ),
          const Gap(25),
          TitleDateColumn(transactionItemModel: commonItemModel),
        ],
      ),
      LastTransactionText(text: commonItemModel.category!),
      // const Gap(45),
      LastTransactionText(text: commonItemModel.cardNumber!),
      LastTransactionText(text: commonItemModel.status!),
      Text(
        commonItemModel.amount.contains('%')
            ? commonItemModel.amount
            : '\$${commonItemModel.amount}',
        style: AppStyles.medium.fontSize12(context).copyWith(color: textColor),
      ),
    ];

    const List<int> flexes = [3, 1, 1, 1, 1];
    return Row(
      children: columns
          .asMap()
          .entries
          .map(
            (entry) => Expanded(
              flex: flexes[entry.key],
              child: Align(
                alignment: entry.key == 0
                    ? Alignment.centerLeft
                    : entry.key == flexes.length - 1
                        ? Alignment.centerRight
                        : Alignment.center,
                child: entry.value,
              ),
            ),
          )
          .toList(),
    );
  }
}
