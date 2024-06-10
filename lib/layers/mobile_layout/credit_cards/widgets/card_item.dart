import 'package:bank_dash/layers/mobile_layout/credit_cards/models/card_model.dart';
import 'package:bank_dash/core/utils/app_styles/app_styles.dart';
import 'package:bank_dash/core/widgets/custom_icon.dart';
import 'package:flutter/material.dart';

import 'custom_text_column.dart';

class CardItem extends StatelessWidget {
  final CardModel cardModel;

  const CardItem({
    super.key,
    required this.cardModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomIcon(
            icon: cardModel.icon,
            bgColor: cardModel.bgColor,
          ),
          CustomTextColumn(
            label: 'Card Type',
            data: cardModel.subTitle!,
          ),
          CustomTextColumn(
            label: cardModel.bank == null ? '' : 'Bank',
            data: cardModel.bank ?? '',
          ),
          Text(
            'view details',
            style: AppStyles.bold
                .fontSize12(context)
                .copyWith(color: const Color(0xff1814F3)),
          ),
        ],
      ),
    );
  }
}
