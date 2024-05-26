import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../helpers/size_config.dart';
import '../utils/app_styles/app_styles.dart';
import '../utils/coloors.dart';
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
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  color: Coloors.primary1,
                ),
              ),
              Expanded(
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: AppStyles.semiBold.fontSize20(context),
                ),
              ),
              const CircleAvatar(),
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
