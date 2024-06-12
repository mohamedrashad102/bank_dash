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
