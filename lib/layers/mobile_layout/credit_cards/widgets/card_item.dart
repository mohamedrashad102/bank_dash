import 'package:bank_dash/core/utils/app_styles/app_styles.dart';
import 'package:bank_dash/core/widgets/custom_icon.dart';
import 'package:bank_dash/layers/mobile_layout/credit_cards/models/card_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'custom_text_column.dart';

class CardItem extends StatelessWidget {
  final CardModel cardModel;
  final bool isMobile;

  const CardItem({
    super.key,
    required this.cardModel,
    required this.isMobile,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> cols = [
      Row(
        children: [
          CustomIcon(
            icon: cardModel.icon,
            bgColor: cardModel.bgColor,
          ),
          const Gap(12),
          CustomTextColumn(
            label: 'Card Type',
            data: cardModel.subTitle!,
          ),
        ],
      ),

      // const Gap(28),
      CustomTextColumn(
        label: cardModel.bank == null ? '' : 'Bank',
        data: cardModel.bank ?? '',
      ),
      // const Gap(28),
      CustomTextColumn(
        label: cardModel.cardNumber == null ? '' : 'Card Number',
        data: cardModel.cardNumber ?? '',
      ),
      //const Gap(28),
      CustomTextColumn(
        label: cardModel.cardName == null ? '' : 'Namain Card',
        data: cardModel.cardName ?? '',
      ),
      Text(
        'view details',
        style: AppStyles.bold
            .fontSize12(context)
            .copyWith(color: const Color(0xff1814F3)),
      ),
    ];

    List<int> desktopFlexes = [3, 2, 3, 2, 2];

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: isMobile
            ? MainAxisAlignment.spaceBetween
            : MainAxisAlignment.spaceBetween,
        children: isMobile
            ? cols
            : cols
                .asMap()
                .entries
                .map(
                  (entry) => Expanded(
                    flex: desktopFlexes[entry.key],
                    child: Align(
                      alignment: entry.key == 0
                          ? Alignment.centerLeft
                          : entry.key == cols.length - 1
                              ? Alignment.centerRight
                              : Alignment.center,
                      child: entry.value,
                    ),
                  ),
                )
                .toList(),
      ),
    );
  }
}
