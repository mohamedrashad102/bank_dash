import 'package:bank_dash/core/helpers/get_font_size.dart';
import 'package:flutter/material.dart';

class MediumStyle {
  TextStyle _base({required Color color, required double fontSize}) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle fontSize12(BuildContext context) {
    return _base(
      color: const Color(0xFF718EBF),
      fontSize: getFontSize(context, 12),
    );
  }

  TextStyle fontSize13(BuildContext context) {
    return _base(
      color: const Color(0xFF232323),
      fontSize: getFontSize(context, 12),
    );
  }

  TextStyle fontSize14(BuildContext context) {
    return _base(
      color: const Color(0xFF232323),
      fontSize: getFontSize(context, 14),
    );
  }

  TextStyle fontSize15(BuildContext context) {
    return _base(
      color: const Color(0xFF1814F3),
      fontSize: getFontSize(context, 14),
    );
  }

  TextStyle fontSize16(BuildContext context) {
    return _base(
      color: const Color(0xFF2D60FF),
      fontSize: getFontSize(context, 16),
    );
  }

  TextStyle fontSize18(BuildContext context) {
    return _base(
      color: const Color(0xFF2D60FF),
      fontSize: getFontSize(context, 18),
    );
  }

  TextStyle fontSize20(BuildContext context) {
    return _base(
      color: Colors.white,
      fontSize: getFontSize(context, 20),
    );
  }
}
