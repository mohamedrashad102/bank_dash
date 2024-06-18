import 'package:flutter/material.dart';

class CardModel {
  final String icon;
  final Color bgColor;
  final String? subTitle;
  final String? label;
  final String? bank;
  final String? cardNumber;
  final String? cardName;
  CardModel({
    required this.icon,
    required this.bgColor,
    required this.subTitle,
    this.cardNumber,
    this.cardName,
    this.bank,
    this.label,
  });
}
