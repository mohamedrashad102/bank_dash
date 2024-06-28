import 'package:bank_dash/core/utils/app_styles/app_styles.dart';
import 'package:flutter/material.dart';

class DesktopTransactionsTableTitle extends StatelessWidget {
  const DesktopTransactionsTableTitle(this.title, {super.key});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Text(
        title,
        style: AppStyles.medium.fontSize14(context).copyWith(
          color: const Color(0xff718EBF),
        ),
      ),
    );
  }
}
