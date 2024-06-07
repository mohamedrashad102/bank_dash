import 'package:flutter/material.dart';

class CardModel {
  final String icon;
  final Color bgColor;
  final String? SubTitle;
  final String? label;
  final String? bank;

  CardModel({
    required this.icon,
    required this.bgColor,
    required this.SubTitle,
    this.bank,
    this.label,
  });
}
