import 'package:bank_dash/core/widgets/custom_icon.dart';
import 'package:bank_dash/layers/mobile_layout/account/widgets/text_column.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../models/account_item_model.dart';

class AccountItem extends StatelessWidget {
  const AccountItem({
    super.key,
    required this.accountItemModel,
  });
  final AccountItemModel accountItemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 20,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomIcon(
            icon: accountItemModel.icon,
            bgColor: accountItemModel.bgColor,
          ),
          const Gap(10),
          Flexible(
            child: TextColumn(
              title: accountItemModel.title,
              value: accountItemModel.value,
            ),
          ),
        ],
      ),
    );
  }
}
