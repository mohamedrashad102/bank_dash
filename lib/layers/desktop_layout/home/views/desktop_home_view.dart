import 'package:bank_dash/core/cubits/drawer_cubit/drawer_cubit.dart';
import 'package:bank_dash/core/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/custom_desktop_body.dart';
import '../../../../core/widgets/desktop_app_bar.dart';
import '../../account/views/desktop_account_view.dart';

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
              Expanded(
                child: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: DesktopAppBar(
                        title: cubit.title,
                      ),
                    ),
                    const SliverToBoxAdapter(
                      child: CustomDesktopBody(
                        currentDesktopViewBody: DesktopAccountView(),
                      ),
                    ),
                  ],
                ),
              )
              //Expanded(child: DrawerCubit.get(context).currentDesktopView())
            ],
          ),
        );
      },
    );
  }
}
<<<<<<< HEAD

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
          const Gap(20),
          SvgPicture.asset(Assets.imagesSettingsAvatar),
          const Gap(20),
          SvgPicture.asset(Assets.imagesNotificationAvatar),
        ],
      ),
    );
  }
}
=======
>>>>>>> 0d0e1b3 (desktop account view done !)
