import 'package:bank_dash/core/utils/app_colors.dart';
import 'package:bank_dash/core/utils/app_styles/app_styles.dart';
import 'package:bank_dash/core/utils/assets.dart';
import 'package:bank_dash/core/widgets/title_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class ServicesChartHeader extends StatelessWidget {
  const ServicesChartHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const TitleText(
          title: 'Services Flow ',
        ),
        const Spacer(),
        SvgPicture.asset(
          Assets.imagesVector,
          height: 20,
          colorFilter:
              const ColorFilter.mode(AppColors.incrementColor, BlendMode.srcIn),
        ),
        const Gap(10),
        Text(
          '+6,79%',
          style: AppStyles.bold.fontSize16(context).copyWith(
                color: AppColors.incrementColor,
              ),
        ),
        const Gap(24),
        SvgPicture.asset(
          Assets.imagesNetwork,
        ),
      ],
    );
  }
}
