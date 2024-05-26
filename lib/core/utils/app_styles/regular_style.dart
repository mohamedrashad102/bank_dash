import 'package:bank_dash/core/helpers/get_font_size.dart';
import 'package:flutter/material.dart';

class RegularStyle {
  TextStyle _base({required Color color, required double fontSize}) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle fontSize10(BuildContext context) {
    return _base(
      color: const Color(0xFFFFFFFF),
      fontSize: getFontSize(context, 10),
    );
  }

  TextStyle fontSize11(BuildContext context) {
    return _base(
      color: const Color(0xFF718EBF),
      fontSize: getFontSize(context, 11),
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
      color: const Color(0xFF718EBF),
      fontSize: getFontSize(context, 13),
    );
  }

  TextStyle fontSize14(BuildContext context) {
    return _base(
      color: const Color(0xFFAAAAAA),
      fontSize: getFontSize(context, 14),
    );
  }

  TextStyle fontSize15(BuildContext context) {
    return _base(
      color: const Color(0xFF718EBF),
      fontSize: getFontSize(context, 15),
    );
  }

  TextStyle fontSize16(BuildContext context) {
    return _base(
      color: const Color(0xFF232323),
      fontSize: getFontSize(context, 16),
    );
  }
}
