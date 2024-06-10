import 'package:bank_dash/core/utils/app_styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TotalLoansRow extends StatelessWidget {
  const TotalLoansRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          r'$360,000',
          style: AppStyles.semiBold.fontSize13(context).copyWith(
                color: const Color(
                  0xffFE5C73,
                ),
              ),
        ),
        const Gap(43),
        Text(
          r'$800,000',
          style: AppStyles.semiBold.fontSize13(context).copyWith(
                color: const Color(
                  0xffFE5C73,
                ),
              ),
        )
      ],
    );
  }
}
