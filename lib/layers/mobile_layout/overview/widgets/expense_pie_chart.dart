import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';

class ExpensePieChart extends StatefulWidget {
  const ExpensePieChart({super.key});

  @override
  State<ExpensePieChart> createState() => _ExpensePieChartState();
}

class _ExpensePieChartState extends State<ExpensePieChart> {
  int _touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        sections: showingSections(),
        centerSpaceRadius: 0,
        sectionsSpace: 7,
        startDegreeOffset: 210,
        pieTouchData: PieTouchData(
          touchCallback: (FlTouchEvent event, pieTouchResponse) {
            int? touchedIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex;
            if (touchedIndex != null) {
              setState(() {
                _touchedIndex = touchedIndex;
              });
            }
          },
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    double radius = 120;
    double additionalRadius = 15;
    double fontSize = 12;
    FontWeight fontWeight = FontWeight.w500;

    return [
      PieChartSectionData(
        color: const Color(0xff343C6A), // Entertainment color
        value: 20,
        title: '20%\nEntertainment',
        radius: _touchedIndex == 0 ? radius + additionalRadius : radius,
        titleStyle: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: const Color(0xffffffff),
        ),
        titlePositionPercentageOffset: 0.6,
      ),
      PieChartSectionData(
        color: const Color(0xffFC7900), // Bill Expense color
        value: 15,
        title: '15%\nBill Expense',
        radius: _touchedIndex == 1 ? radius + additionalRadius : radius,
        titleStyle: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: const Color(0xffffffff),
        ),
        titlePositionPercentageOffset: 0.6,
      ),
      PieChartSectionData(
        color: const Color(0xff1814F3), // Others color
        value: 25,
        title: '25%\nOthers',
        radius: _touchedIndex == 2 ? radius + additionalRadius : radius,
        titleStyle: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: const Color(0xffffffff),
        ),
        titlePositionPercentageOffset: 0.6,
      ),
      PieChartSectionData(
        color: const Color(0xffFA00FF), // Investment color
        value: 40,
        title: '40%\nInvestment',
        radius: _touchedIndex == 3 ? radius + additionalRadius : radius,
        titleStyle: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: const Color(0xffffffff),
        ),
        titlePositionPercentageOffset: 0.6,
      ),
    ];
  }
}
