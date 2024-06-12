import 'package:flutter/material.dart';

class CommonItemModel {
  final String title;
  final String amount;
  final String icon;
  final Color bgColor;
  final String date;
<<<<<<< HEAD
  const CommonItemModel({
=======
  final String? status;
  final String? category;
  final String? cardNumber;
  CommonItemModel({
>>>>>>> 0d0e1b3 (desktop account view done !)
    required this.title,
    required this.amount,
    required this.icon,
    required this.bgColor,
    required this.date,
    this.status,
    this.category,
    this.cardNumber,
  });
}
