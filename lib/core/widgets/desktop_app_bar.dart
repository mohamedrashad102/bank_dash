import 'package:bank_dash/core/utils/app_colors.dart';
import 'package:bank_dash/core/utils/app_styles/app_styles.dart';
import 'package:bank_dash/core/utils/assets.dart';
import 'package:bank_dash/core/widgets/custom_search_bar.dart';
import 'package:bank_dash/core/widgets/us_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class DesktopAppBar extends StatelessWidget {
  const DesktopAppBar({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border.symmetric(
          vertical: BorderSide(
            width: 3.5,
            color: Color(0xFF6B68F3),
          ),
        ),
      ),
      child: Row(
        children: [
          Text(
            title,
            style: AppStyles.semiBold.fontSize20(context).copyWith(
                  color: AppColors.primary1,
                ),
          ),
          const Spacer(),
          const CustomSearchBar(),
          const Gap(20),
          SvgPicture.asset(Assets.imagesSettingsAvatar),
          const Gap(20),
          SvgPicture.asset(Assets.imagesNotificationAvatar),
          const Gap(20),
          const UsImage(),
        ],
      ),
    );
  }
}
