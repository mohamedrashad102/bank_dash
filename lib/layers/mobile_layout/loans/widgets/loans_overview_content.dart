import 'package:bank_dash/core/widgets/custom_divder.dart';
import 'package:bank_dash/layers/mobile_layout/loans/widgets/loans_header.dart';
import 'package:bank_dash/layers/mobile_layout/loans/widgets/loans_items_list.dart';
import 'package:bank_dash/layers/mobile_layout/loans/widgets/loans_overview_section.dart';
import 'package:flutter/material.dart';

import 'total_loans_section.dart';

class LoansOverviewContent extends StatelessWidget {
  const LoansOverviewContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: const LinearGradient(
            colors: [
              Color(0xFF2D60FF),
              Color(0xFF539BFF),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
      child: const Column(
        children: [
          LoansHeader(),
          CustomDivider(),
          LoansItemsList(),
          CustomDivider(),
          TotalLoansSection()
        ],
      ),
    );
  }
}
