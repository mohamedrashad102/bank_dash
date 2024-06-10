import 'package:bank_dash/core/widgets/custom_icon.dart';
import 'package:bank_dash/layers/mobile_layout/credit_cards/models/card_model.dart';
import 'package:bank_dash/layers/mobile_layout/credit_cards/widgets/custom_text_column.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CardSettingsItem extends StatelessWidget {
  const CardSettingsItem({
    super.key,
    required this.cardModel,
  });
  final CardModel cardModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomIcon(
          icon: cardModel.icon,
          bgColor: cardModel.bgColor,
        ),
        const Gap(12),
        CustomTextColumn(
          label: cardModel.label!,
          data: cardModel.subTitle!,
        ),
      ],
    );
  }
}
