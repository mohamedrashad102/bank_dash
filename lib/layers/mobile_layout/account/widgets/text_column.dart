import 'package:bank_dash/core/utils/app_styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextColumn extends StatelessWidget {
  const TextColumn({
    super.key,
    required this.title,
    required this.value,
    this.withoutDollar = false,
  });
  final String title;
  final String value;
  final bool withoutDollar;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            title,
            style: AppStyles.regular.fontSize12(context),
          ),
        ),
        FittedBox(
          child: Text(
            withoutDollar ? value : '\$$value',
            style: AppStyles.semiBold.fontSize16(context).copyWith(
                  color: const Color(
                    0xff232323,
                  ),
                ),
          ),
        ),
      ],
    );
  }
}
