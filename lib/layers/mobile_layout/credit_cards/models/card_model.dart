import 'package:flutter/material.dart';

class CardModel {
  final String icon;
  final Color bgColor;
  final String? subTitle;
  final String? label;
  final String? bank;

  CardModel({
    required this.icon,
    required this.bgColor,
    required this.subTitle,
    this.bank,
    this.label,
  });
}
