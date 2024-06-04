import 'package:bank_dash/core/utils/app_styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomTextColumn extends StatelessWidget {
  const CustomTextColumn({
    super.key,
    required this.label,
    required this.data,
  });
  final String label;
  final String data;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppStyles.medium.fontSize14(context),
        ),
        const Gap(4),
        Text(
          data,
          style: AppStyles.regular.fontSize12(context),
        )
      ],
    );
  }
}
