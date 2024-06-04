import 'package:bank_dash/core/helpers/get_font_size.dart';
import 'package:flutter/material.dart';

class BoldStyle {
  TextStyle _base({required Color color, required double fontSize}) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle fontSize16(BuildContext context) {
    return _base(
      color: const Color(0xFF4EB7F2),
      fontSize: getFontSize(context, 16),
    );
  }
}
