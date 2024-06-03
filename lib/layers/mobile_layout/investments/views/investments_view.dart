import 'package:bank_dash/core/widgets/title_text.dart';
import 'package:bank_dash/layers/mobile_layout/investments/widgets/total_investment_chart.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/widgets/custom_scaffold.dart';
import '../widgets/all_investment_items.dart';

class InvestmentsView extends StatelessWidget {
  const InvestmentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      title: 'Investments',
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            children: [
              AllInvestmentItems(),
              Gap(22),
              TitleText(title: 'Yearly Total Investment'),
              SizedBox(height: 250, child: TotalInvestmentChart())
            ],
          ),
        ),
      ),
    );
  }
}
