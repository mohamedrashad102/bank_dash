import 'package:bank_dash/core/utils/app_styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/models/common_item_model.dart';

class TitleDateColumn extends StatelessWidget {
  const TitleDateColumn({
    super.key,
    required this.transactionItemModel,
  });

  final CommonItemModel transactionItemModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            transactionItemModel.title,
            style: AppStyles.medium
                .fontSize14(context)
                .copyWith(color: const Color(0xff333B69)),
          ),
        ),
        const Gap(4),
        FittedBox(
          child: Text(
            transactionItemModel.date,
            style: AppStyles.regular.fontSize12(context),
          ),
        ),
      ],
    );
  }
}
