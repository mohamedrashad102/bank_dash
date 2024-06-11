import 'package:bank_dash/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../helpers/size_config.dart';
import '../utils/app_colors.dart';
import '../utils/app_styles/app_styles.dart';
import 'custom_search_bar.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                  color: AppColors.primary1,
                ),
              ),
              Expanded(
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: AppStyles.semiBold.fontSize20(context),
                ),
              ),
              const CircleAvatar(
                backgroundImage: AssetImage(
                  Assets.imagesUs,
                ),
              ),
            ],
          ),
          const Gap(20),
          const CustomSearchBar(),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(SizeConfig.appBarHight);
}
