import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../core/utils/app_styles/app_styles.dart';
import '../../../../core/utils/build_tip.dart';

class MonthlyRevenueChart extends StatefulWidget {
  const MonthlyRevenueChart({super.key});

  @override
  State<MonthlyRevenueChart> createState() => _MonthlyRevenueChartState();
}

class _MonthlyRevenueChartState extends State<MonthlyRevenueChart> {
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _tooltipBehavior =
        buildTip(color: const Color(0xff16DBCC), header: 'Revenue');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //width: 400,
      height: 225,
      child: SfCartesianChart(
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
        series: <SplineSeries<RevenueData, String>>[
          SplineSeries<RevenueData, String>(
            splineType: SplineType.cardinal,
            width: 3,
            color: const Color(0xff16DBCC),
            dataSource: <RevenueData>[
              RevenueData('2016', 10000),
              RevenueData('2017', 20000),
              RevenueData('2017', 23000),
              RevenueData('2018', 12000),
              RevenueData('2019', 30000),
              RevenueData('2020', 20000),
              RevenueData('2021', 23000),
              RevenueData('2021', 28000),
            ],
            xValueMapper: (RevenueData data, _) => data.year,
            yValueMapper: (RevenueData data, _) => data.investmentAmount,
          )
        ],
      ),
    );
  }
}

class RevenueData {
  RevenueData(this.year, this.investmentAmount);
  final String year;
  final double investmentAmount;
}
