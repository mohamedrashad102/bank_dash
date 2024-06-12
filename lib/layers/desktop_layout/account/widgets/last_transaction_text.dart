import 'package:bank_dash/core/utils/app_styles/app_styles.dart';
import 'package:flutter/material.dart';

class LastTransactionText extends StatelessWidget {
  const LastTransactionText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.regular.fontSize12(context),
    );
  }
}
