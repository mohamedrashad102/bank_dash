import 'package:bank_dash/core/utils/app_styles/app_styles.dart';
import 'package:flutter/material.dart';

class TableLabelText extends StatelessWidget {
  const TableLabelText({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: AppStyles.bold.fontSize12(context).copyWith(
            color: const Color(0xffffffff),
          ),
    );
  }
}
