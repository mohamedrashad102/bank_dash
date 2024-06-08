import 'package:bank_dash/core/utils/app_styles/app_styles.dart';
import 'package:bank_dash/layers/mobile_layout/loans/widgets/loans_overview_section.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'total_loans_row.dart';

class TotalLoansSection extends StatelessWidget {
  const TotalLoansSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Total',
          style: AppStyles.semiBold.fontSize13(context).copyWith(
                color: const Color(
                  0xffFE5C73,
                ),
              ),
        ),
        const Gap(5),
        const TotalLoansRow(),
      ],
    );
  }
}
