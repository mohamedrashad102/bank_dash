import 'package:bank_dash/core/utils/app_colors.dart';
import 'package:bank_dash/core/utils/assets.dart';
import 'package:bank_dash/layers/mobile_layout/credit_cards/models/card_model.dart';
import 'package:flutter/material.dart';

import 'desktop_card_item.dart';

class DesktopCardsList extends StatelessWidget {
  const DesktopCardsList({
    super.key,
  });
  static List<CardModel> cardModels = [
    CardModel(
      icon: Assets.imagesCreditCardBlue,
      bgColor: AppColors.bgColorBlue,
      subTitle: 'Secondary',
      bank: 'DBL Bank',
      cardName: 'Abdo',
      cardNumber: '**** **** 7560',
    ),
    CardModel(
      icon: Assets.imagesCreditCardPink,
      bgColor: AppColors.bgColorPink,
      subTitle: 'Secondary',
      bank: 'BRC Bank',
      cardName: 'Rashad',
      cardNumber: '**** **** 7560',
    ),
    CardModel(
      icon: Assets.imagesCreditCardYellow,
      bgColor: AppColors.bgColorYellow,
      subTitle: 'Secondary',
      bank: 'ABM Bank',
      cardName: 'Moaz',
      cardNumber: '**** **** 7560',
    ),
    CardModel(
      icon: Assets.imagesCreditCardYellow,
      bgColor: const Color.fromARGB(255, 217, 224, 255),
      subTitle: 'Secondary',
      bank: 'ABM Bank',
      cardName: 'Abboud',
      cardNumber: '**** **** 7560',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: cardModels
          .map(
            (e) => Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: DesktopCardItem(cardModel: e),
            ),
          )
          .toList(),
    );
  }
}
