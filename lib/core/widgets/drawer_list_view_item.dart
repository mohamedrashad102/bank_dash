import 'package:bank_dash/core/models/drawer_model.dart';
import 'package:bank_dash/core/utils/app_colors.dart';
import 'package:bank_dash/core/utils/app_styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class DrawerListViewItem extends StatelessWidget {
  const DrawerListViewItem({
    super.key,
    required this.item,
    required this.isSelected,
    required this.onTap,
  });

  final DrawerModel item;
  final bool isSelected;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Container(
            height: 60,
            width: 6,
            decoration: BoxDecoration(
              color: isSelected ? AppColors.primary3 : Colors.transparent,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
          ),
          const Gap(40),
          SvgPicture.asset(
            item.icon,
            colorFilter: ColorFilter.mode(
              isSelected ? AppColors.primary3 : AppColors.greyColor,
              BlendMode.srcIn,
            ),
          ),
          const Gap(25),
          Text(
            item.title,
            style: AppStyles.medium.fontSize18(context).copyWith(
                  color: !isSelected ? AppColors.greyColor : null,
                ),
          ),
        ],
      ),
    );
  }
}
