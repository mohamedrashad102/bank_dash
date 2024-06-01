import 'package:bank_dash/core/helpers/get_font_size.dart';
import 'package:flutter/material.dart';

class SemiBoldStyle {
  TextStyle _base({required Color color, required double fontSize}) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle fontSize13(BuildContext context) {
    return _base(
      color: const Color(0xFFFFFFFF),
      fontSize: getFontSize(context, 13),
    );
  }

  TextStyle fontSize15(BuildContext context) {
    return _base(
      color: const Color(0xFFFFFFFF),
      fontSize: getFontSize(context, 15),
    );
  }

  TextStyle fontSize16(BuildContext context) {
    return _base(
      color: const Color(0xFF343C6A),
      fontSize: getFontSize(context, 16),
    );
  }
TextStyle fontSize14(BuildContext context) {
    return _base(
      color: const Color(0xFF343C6A),
      fontSize: getFontSize(context, 14),
    );
  }

  TextStyle fontSize18(BuildContext context) {
    return _base(
      color: const Color(0xFF333B69),
      fontSize: getFontSize(context, 18),
    );
  }

  TextStyle fontSize20(BuildContext context) {
    return _base(
      color: const Color(0xFF343C6A),
      fontSize: getFontSize(context, 20),
    );
  }

  TextStyle fontSize22(BuildContext context) {
    return _base(
      color: const Color(0xFF333B69),
      fontSize: getFontSize(context, 22),
    );
  }

  TextStyle fontSize24(BuildContext context) {
    return _base(
      color: const Color(0xFF4EB7F2),
      fontSize: getFontSize(context, 24),
    );
  }
}
