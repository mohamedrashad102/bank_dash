import 'package:flutter/painting.dart';

class CreditCardModel {
  final String balance;
  final String cardHolder;
  final String validThru;
  final String cardNumber;
  final List<Color> gradientColors;

  CreditCardModel({
    required this.balance,
    required this.cardHolder,
    required this.validThru,
    required this.cardNumber,
    required this.gradientColors,
  });
}
