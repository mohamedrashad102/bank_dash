import 'package:bank_dash/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../../core/widgets/custom_scaffold.dart';
import '../../../../core/widgets/title_text.dart';

class CreditCardsView extends StatelessWidget {
  const CreditCardsView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'Credit Cards',
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              const TitleText(title: 'My Cards'),
              const Gap(12),
              Container(
                color: Colors.amber,
                child: SvgPicture.asset(Assets.imagesChipCard),
              )
            ],
          ),
        ),
      ),
    );
  }
}
