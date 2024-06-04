import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

TooltipBehavior buildTip({required String header,required Color color}) {
  return TooltipBehavior(
    enable: true,
    header: header,
    borderColor: color,
    borderWidth: 2,
    color: Colors.white,
    textStyle: const TextStyle(
      color: Color(0xFF718EBF),
      fontSize: 12,
      fontWeight: FontWeight.bold,
      fontFamily: 'Inter',
    ),
    shadowColor: Colors.black.withOpacity(0.25),
  );
}
