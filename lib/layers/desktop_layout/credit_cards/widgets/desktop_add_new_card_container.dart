import 'package:bank_dash/core/utils/app_styles/app_styles.dart';
import 'package:bank_dash/core/widgets/custom_text_button_builder.dart';
import 'package:bank_dash/layers/desktop_layout/credit_cards/widgets/desktop_text_fields_list.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DesktopAddNewCardContainer extends StatelessWidget {
  const DesktopAddNewCardContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Credit Card generally means a plastic card issued by Scheduled Commercial Banks assigned to a Cardholder, with a credit limit, that can be used to purchase goods and services on credit or obtain cash advances.',
            style: AppStyles.regular.fontSize12(context),
          ),
          const Gap(15),
          const DesktopTextFieldsList(),
          const Gap(20),
          CustomTextButtonBuilder.normalWithText(
            context,
            width: 120,
            borderRadius: 9,
            text: 'Add Card',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
