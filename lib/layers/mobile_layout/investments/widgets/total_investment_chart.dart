import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class TotalInvestmentChart extends StatefulWidget {
  const TotalInvestmentChart({super.key});

  @override
  State<TotalInvestmentChart> createState() => _TotalInvestmentChartState();
}

class _TotalInvestmentChartState extends State<TotalInvestmentChart> {
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        
        child: SfCartesianChart(
          primaryXAxis: const CategoryAxis(),
          legend: const Legend(isVisible: true),
          // Enable tooltip
          tooltipBehavior: _tooltipBehavior,
          series: <LineSeries<SalesData, String>>[
            LineSeries<SalesData, String>(
              dataSource: <SalesData>[
                SalesData('Jan', 35),
                SalesData('Feb', 28),
                SalesData('Mar', 34),
                SalesData('Apr', 32),
                SalesData('May', 40)
              ],
              xValueMapper: (SalesData sales, _) => sales.year,
              yValueMapper: (SalesData sales, _) => sales.sales,
              // Enable data label
              dataLabelSettings: const DataLabelSettings(isVisible: true),
              // Enable markers
              markerSettings: const MarkerSettings(
                isVisible: true,
                shape: DataMarkerType.circle,
                borderWidth: 2,
                borderColor: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}
