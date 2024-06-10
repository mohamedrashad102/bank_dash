import 'package:bank_dash/core/utils/app_styles/app_styles.dart';
import 'package:flutter/material.dart';

class LoansHeader extends StatelessWidget {
  const LoansHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Loan Money',
          style: AppStyles.medium.fontSize12(context).copyWith(
                color: const Color(0xffffffff),
              ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:35.0),
          child: Text(
            'Left to repay',
            style: AppStyles.medium.fontSize12(context).copyWith(
                  color: const Color(0xffffffff),
                ),
          ),
        ),
        Text(
          'repay',
          style: AppStyles.medium.fontSize12(context).copyWith(
                color: const Color(0xffffffff),
              ),
        )
      ],
    );
  }
}
