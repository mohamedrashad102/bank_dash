import 'package:bank_dash/core/helpers/size_config.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_colors.dart';
import '../utils/app_styles/app_styles.dart';
import '../utils/assets.dart';
import 'custom_search_bar.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      pinned: false,
      toolbarHeight: SizeConfig.appBarHight,
      automaticallyImplyLeading: false,
      title: Container(
        color: Colors.white,
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
      ),
    );
  }
}
