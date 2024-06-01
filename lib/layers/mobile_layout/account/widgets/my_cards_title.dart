import 'package:bank_dash/core/utils/app_styles/app_styles.dart';
import 'package:bank_dash/core/widgets/title_text.dart';
import 'package:flutter/material.dart';

class MyCardsTitle extends StatelessWidget {
  const MyCardsTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const TitleText(
          title: 'My Cards',
        ),
        const Spacer(),
        Text(
          'See All',
          style: AppStyles.semiBold.fontSize14(context),
        ),
      ],
    );
  }
}
