import 'package:bank_dash/core/cubits/drawer_cubit/drawer_cubit.dart';
import 'package:bank_dash/core/widgets/custom_desktop_body.dart';
import 'package:bank_dash/core/widgets/desktop_app_bar.dart';
import 'package:flutter/material.dart';

class DesktopHomeViewBody extends StatelessWidget {
  const DesktopHomeViewBody({
    super.key,
    required this.cubit,
  });

  final DrawerCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: DesktopAppBar(
              title: cubit.title,
            ),
          ),
          SliverToBoxAdapter(
            child: CustomDesktopBody(
              currentDesktopViewBody: cubit.currentDesktopView(),
            ),
          ),
        ],
      ),
    );
  }
}
