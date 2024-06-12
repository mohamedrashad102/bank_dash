import 'package:bank_dash/core/helpers/size_config.dart';
import 'package:flutter/material.dart';

double getScaleFactor(BuildContext context) {
  final width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.mobileBreakPoint) {
    return width / 400;
  } else if (width < SizeConfig.tabletBreakPoint) {
    return width / 1300;
  } else {
    return width / SizeConfig.tabletBreakPoint;
  }
}
