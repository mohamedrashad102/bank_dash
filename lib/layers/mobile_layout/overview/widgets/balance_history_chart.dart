import 'dart:math';
import 'package:bank_dash/core/utils/app_styles/app_styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BalanceHistoryChart extends StatelessWidget {
  const BalanceHistoryChart({super.key});

  static List<FlSpot> spots = [
    for (var i = 0; i < 11; i++)
      FlSpot(
        i.toDouble(),
        (Random().nextInt(6) + 1) * 10,
      ),
  ];

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        clipData: const FlClipData.horizontal(),
        titlesData: FlTitlesData(
          show: true,
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              interval: 1,
              getTitlesWidget: (value, meta) {
                String month = '';
                switch (value.toInt()) {
                  case 0:
                    month = 'Jul';
                  case 1:
                    month = 'Aug';
                  case 2:
                    month = 'Sep';
                  case 3:
                    month = 'Oct';
                  case 4:
                    month = 'Nov';
                  case 5:
                    month = 'Dec';
                  case 6:
                    month = 'Jan';
                  case 7:
                    month = 'Feb';
                  case 8:
                    month = 'Mar';
                  case 9:
                    month = 'Apr';
                  case 10:
                    month = 'May';
                  case 11:
                    month = 'Jun';
                }
                return Text(
                  month,
                  style: AppStyles.regular.fontSize12(context),
                  maxLines: 1,
                );
              },
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              interval: 20,
              getTitlesWidget: (value, meta) {
                return Padding(
                  padding: const EdgeInsets.only(right: 3),
                  child: Text(
                    value.toInt().toString(),
                    style: AppStyles.regular.fontSize12(context),
                  ),
                );
              },
            ),
          ),
          rightTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          topTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
        ),
        minX: 0,
        maxX: 7,
        minY: 0,
        maxY: 80,
        borderData: FlBorderData(show: false),
        lineBarsData: [
          LineChartBarData(
            spots: spots,
            isCurved: true,
            barWidth: 4,
            color: const Color(0xff1814F3),
            belowBarData: BarAreaData(
              show: true,
              gradient: LinearGradient(
                colors: [
                  const Color(0xff2D60FF).withOpacity(0.3),
                  const Color(0xff2D60FF).withOpacity(0.2),
                  const Color(0xff2D60FF).withOpacity(0.1),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
