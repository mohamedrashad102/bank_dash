import 'package:bank_dash/core/utils/app_colors.dart';
import 'package:bank_dash/core/utils/app_styles/app_styles.dart';
import 'package:flutter/material.dart';

import '../models/table_item_model.dart';

class TableItem extends StatelessWidget {
  const TableItem({
    super.key,
    required this.tableItemModel,
  });
  final TableItemModel tableItemModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          tableItemModel.slNo,
          style: AppStyles.regular.fontSize12(context).copyWith(
                color: const Color(0XFF232323),
              ),
        ),
        Text(
          tableItemModel.name,
          style: AppStyles.regular.fontSize12(context).copyWith(
                color: const Color(0XFF232323),
              ),
        ),
        Text(
          '\$${tableItemModel.price}',
          style: AppStyles.regular.fontSize12(context).copyWith(
                color: const Color(0XFF232323),
              ),
        ),
        Text(
          tableItemModel.returnValue,
          style: AppStyles.regular.fontSize12(context).copyWith(
                color: tableItemModel.returnValue.startsWith('+')
                    ? AppColors.incrementColor
                    : AppColors.decrementColor,
              ),
        ),
      ],
    );
  }
}
