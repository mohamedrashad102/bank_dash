import 'package:bank_dash/core/utils/app_styles/app_styles.dart';
import 'package:flutter/material.dart';

class TableHeader extends StatelessWidget {
  const TableHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Sl No',
          style: AppStyles.medium.fontSize12(context),
        ),
        Text(
          'Name',
          style: AppStyles.medium.fontSize12(context),
        ),
        Text(
          'Price',
          style: AppStyles.medium.fontSize12(context),
        ),
        Text(
          'Return',
          style: AppStyles.medium.fontSize12(context),
        ),
      ],
    );
  }
}
