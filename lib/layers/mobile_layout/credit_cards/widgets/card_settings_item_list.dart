import 'package:bank_dash/core/utils/app_colors.dart';
import 'package:bank_dash/core/utils/assets.dart';
import 'package:bank_dash/layers/mobile_layout/credit_cards/models/card_model.dart';
import 'package:flutter/material.dart';

import 'card_settings_item.dart';

class CardSettingsItemList extends StatelessWidget {
  const CardSettingsItemList({
    super.key,
  });
  static List<CardModel> cardModels = [
    CardModel(
      bgColor: AppColors.bgColorYellow,
      icon: Assets
          .imagesBlockCard, // Replace with the actual asset path for the icon
      label: 'Block Card',
      subTitle: 'Instantly block your card',
    ),
    CardModel(
      bgColor: AppColors.bgColorBlue,
      icon: Assets
          .imagesPicCode, // Replace with the actual asset path for the icon
      label: 'Change Pic Code',
      subTitle: 'Withdraw without any card',
    ),
    CardModel(
      bgColor: AppColors.bgColorPink,
      icon: Assets
          .imagesGooglePink, // Replace with the actual asset path for the icon
      label: 'Add to Google Pay',
      subTitle: 'Withdraw without any card',
    ),
    CardModel(
      bgColor: AppColors.bgColorMintGreen,
      icon:
          Assets.imagesApple, // Replace with the actual asset path for the icon
      label: 'Add to Apple Pay',
      subTitle: 'Withdraw without any card',
    ),
    CardModel(
      bgColor: AppColors.bgColorMintGreen,
      icon:
          Assets.imagesApple, // Replace with the actual asset path for the icon
      label: 'Add to Apple Store',
      subTitle: 'Withdraw without any card',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: cardModels
            .asMap()
            .entries
            .map(
              (e) => Padding(
                padding: e.key == cardModels.length - 1
                    ? EdgeInsets.zero
                    : const EdgeInsets.only(bottom: 15.0),
                child: CardSettingsItem(cardModel: e.value),
              ),
            )
            .toList(),
      ),
    );
  }
}
