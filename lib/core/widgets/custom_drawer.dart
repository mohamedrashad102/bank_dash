import 'package:bank_dash/core/cubits/drawer_cubit/drawer_cubit.dart';
import 'package:bank_dash/core/models/drawer_model.dart';
import 'package:bank_dash/core/utils/app_styles/app_styles.dart';
import 'package:bank_dash/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../utils/assets.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(15),
            Row(
              children: [
                const Gap(40),
                Image.asset(Assets.imagesBankDashLogo),
              ],
            ),
            const Gap(50),
            const DrawerListView(),
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
        final items = cubit.drawerItems;
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
          SvgPicture.asset(item.icon),
          const Gap(25),
          Text(
            item.title,
            style: AppStyles.medium.fontSize18(context),
          ),
        ],
      ),
    );
  }
}
