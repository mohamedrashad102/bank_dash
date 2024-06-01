import 'package:flutter/material.dart';

class AccountItemModel {
  final String title;
  final String value;
  final String icon;
  final Color bgColor;
  AccountItemModel({
    required this.title,
    required this.value,
    required this.icon,
    required this.bgColor,
  });
}

class TransactionItemModel {
  final String title;
  final String value;
  final String icon;
  final Color bgColor;
  final String date;
  TransactionItemModel(
    this.date, {
    required this.title,
    required this.value,
    required this.icon,
    required this.bgColor,
  });
}
