import 'package:flutter/material.dart';

class CommonItemModel {
  final String title;
  final String amount;
  final String icon;
  final Color bgColor;
  final String subtitle;
  final String? status;
  final String? category;
  final String? cardNumber;
  final String? investmentVal;
<<<<<<< HEAD
=======

>>>>>>> refs/rewritten/try-to-fixed-it
  const CommonItemModel({
    required this.title,
    required this.amount,
    required this.icon,
    required this.bgColor,
    this.investmentVal,
    this.status,
    this.category,
    this.cardNumber,
    required this.subtitle,
  });
}
