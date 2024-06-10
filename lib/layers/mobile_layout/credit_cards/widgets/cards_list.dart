import 'package:bank_dash/layers/mobile_layout/credit_cards/models/card_model.dart';
import 'package:bank_dash/core/utils/app_colors.dart';
import 'package:bank_dash/core/utils/assets.dart';
import 'package:bank_dash/layers/mobile_layout/credit_cards/widgets/card_item.dart';
import 'package:flutter/material.dart';

class CardsList extends StatelessWidget {
  const CardsList({
    super.key,
  });
  static List<CardModel> cardModels = [
    CardModel(
      icon: Assets.imagesCreditCardBlue,
      bgColor: AppColors.bgColorBlue,
      subTitle: 'Secondary',
      bank: 'DBL Bank',
    ),
    CardModel(
      icon: Assets.imagesCreditCardPink,
      bgColor: AppColors.bgColorPink,
      subTitle: 'Secondary',
      bank: 'BRC Bank',
    ),
    CardModel(
      icon: Assets.imagesCreditCardYellow,
      bgColor: AppColors.bgColorYellow,
      subTitle: 'Secondary',
      bank: 'ABM Bank',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: cardModels
          .map(
            (e) => Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: CardItem(cardModel: e),
            ),
          )
          .toList(),
    );
  }
}
