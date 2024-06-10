import 'package:bank_dash/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class DashLogo extends StatelessWidget {
  const DashLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Gap(40),
        Image.asset(Assets.imagesLogo),
        const Gap(9),
        SvgPicture.asset(Assets.imagesBankDashTitle),
      ],
    );
  }
}
