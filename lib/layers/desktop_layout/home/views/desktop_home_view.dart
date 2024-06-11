import 'package:bank_dash/core/cubits/drawer_cubit/drawer_cubit.dart';
import 'package:bank_dash/core/utils/app_colors.dart';
import 'package:bank_dash/core/utils/app_styles/app_styles.dart';
import 'package:bank_dash/core/utils/assets.dart';
import 'package:bank_dash/core/widgets/custom_drawer.dart';
import 'package:bank_dash/core/widgets/custom_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class DesktopHomeView extends StatelessWidget {
  const DesktopHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DrawerCubit, DrawerCubitState>(
      builder: (context, state) {
        final cubit = DrawerCubit.get(context);

        return Scaffold(
          body: Row(
            children: [
              const CustomDrawer(platformNumber: 2),
              Column(
                children: [
                  CustomAppBar(
                    title: cubit.title,
                  ),
                ],
              )
              //Expanded(child: DrawerCubit.get(context).currentDesktopView())
            ],
          ),
        );
      },
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(28),
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
          // spacer
          const CustomSearchBar(),
          Gap(20),
          SvgPicture.asset(Assets.imagesSettingsAvatar),
          Gap(20),
          SvgPicture.asset(Assets.imagesNotificationAvatar),
        ],
      ),
    );
  }
}
