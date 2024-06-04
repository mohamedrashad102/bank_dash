import 'package:bank_dash/core/utils/app_styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../core/utils/build_tip.dart';

class TotalInvestmentChart extends StatefulWidget {
  const TotalInvestmentChart({super.key});

  @override
  State<TotalInvestmentChart> createState() => _TotalInvestmentChartState();
}

class _TotalInvestmentChartState extends State<TotalInvestmentChart> {
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _tooltipBehavior =
        buildTip(color: const Color(0xffFCAA0B), header: 'Investment');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      primaryXAxis: CategoryAxis(
        labelStyle: AppStyles.regular.fontSize12(context),
      ),
      primaryYAxis: NumericAxis(
        labelStyle: AppStyles.regular.fontSize12(context),
        minimum: 0,
        maximum: 40000,
        interval: 10000,
        numberFormat: NumberFormat.currency(
          locale: 'en_US',
          symbol: '\$',
          decimalDigits: 0,
        ),
      ),
      tooltipBehavior: _tooltipBehavior,
      series: <LineSeries<InvestmentData, String>>[
        LineSeries<InvestmentData, String>(
          width: 3,
          color: const Color(0xffFCAA0B),
          dataSource: <InvestmentData>[
            InvestmentData('2016', 5000),
            InvestmentData('2017', 20000),
            InvestmentData('2018', 15000),
            InvestmentData('2019', 30000),
            InvestmentData('2020', 20000),
            InvestmentData('2021', 28000),
          ],
          xValueMapper: (InvestmentData data, _) => data.year,
          yValueMapper: (InvestmentData data, _) => data.investmentAmount,
          markerSettings: const MarkerSettings(
            isVisible: true,
            shape: DataMarkerType.circle,
            borderWidth: 2,
            height: 10,
            borderColor: Color(0xffFCAA0B),
          ),
        )
      ],
    );
  }
}

class InvestmentData {
  InvestmentData(this.year, this.investmentAmount);
  final String year;
  final double investmentAmount;
}
