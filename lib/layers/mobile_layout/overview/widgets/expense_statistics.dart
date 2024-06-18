import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import '../../../../core/widgets/title_text.dart';

class ExpenseStatistics extends StatelessWidget {
  const ExpenseStatistics({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText(title: 'Expense Statistics'),
        Gap(12),
        SizedBox(
          height: 260,
          child: PieChartWidget(),
        ),
      ],
    );
  }
}

class PieChartWidget extends StatelessWidget {
  const PieChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        sections: showingSections(),
        centerSpaceRadius: 0,
        sectionsSpace: 7,
        startDegreeOffset: 210,
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    double radius = 120;
    double fontSize = 12;
    FontWeight fontWeight = FontWeight.w500;
    return [
      PieChartSectionData(
        color: const Color(0xff343C6A), // Entertainment color
        value: 20,
        title: '20%\nEntertainment',
        radius: radius,
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
        radius: radius,
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
        radius: radius,
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
        radius: radius,
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
