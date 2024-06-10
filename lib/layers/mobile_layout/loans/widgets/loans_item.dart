import 'package:bank_dash/core/utils/app_styles/app_styles.dart';
import 'package:bank_dash/core/widgets/custom_text_button_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoansItem extends StatelessWidget {
  const LoansItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          r'$100,000',
          style: AppStyles.regular.fontSize12(context).copyWith(
                color: const Color(0xffffffff),
              ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 55.0),
          child: Text(
            r'$45,000',
            style: AppStyles.regular.fontSize12(context).copyWith(
                  color: const Color(0xffffffff),
                ),
          ),
        ),
        Flexible(
          child: CustomTextButtonBuilder.reversedWithText(
            context,
            text: 'Repay',
            horizontalPadding: 12,
            verticalPadding: 5,
            borderRadius: 50,
          ),
        )
      ],
    );
  }
}
