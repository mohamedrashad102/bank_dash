import 'package:bank_dash/core/widgets/custom_divder.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../cubits/drawer_cubit/drawer_cubit.dart';
import '../models/drawer_model.dart';
import '../utils/app_colors.dart';
import '../utils/app_styles/app_styles.dart';
import 'dash_logo.dart';
import 'drawer_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
    required this.platformNumber,
  });
  final int platformNumber;

  @override
  Widget build(BuildContext context) {

    return const Drawer(
      width: 250,
      shape: RoundedRectangleBorder(),

    return Drawer(
      width: 250,
      shape: const RoundedRectangleBorder(),

      backgroundColor: Colors.white,
      elevation: 0,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Gap(26),
            SafeArea(

            const Gap(26),
            const SafeArea(

              bottom: false,
              child: DashLogo(),
            ),
            const CustomDivider(),
            DrawerListView(
              platformNumber: platformNumber,
            ),
          ],
        ),
      ),
    );
  }
}


class DrawerListView extends StatelessWidget {
  const DrawerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DrawerCubit, DrawerCubitState>(
      builder: (context, state) {
        final cubit = DrawerCubit.get(context);
        final items = cubit.mobileDrawerItems;
        return ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) => DrawerListViewItem(
            item: items[index],
            isSelected: cubit.selectedIndex == index,
            onTap: () {
              DrawerCubit.get(context).changeDrawer(index);
              context.pop();
            },
          ),
          itemCount: items.length,
        );
      },
    );
  }
}

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

