import 'package:bank_dash/core/utils/app_styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ChartItem extends StatelessWidget {
  const ChartItem({
    super.key,
    required this.title,
    required this.color,
  });
  final String title;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 12,
          width: 12,
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(
              Radius.circular(4),
            ),
          ),
        ),
        const Gap(10),
        Text(
          title,
          style: AppStyles.regular.fontSize12(context),
        )
      ],
    );
  }
}
