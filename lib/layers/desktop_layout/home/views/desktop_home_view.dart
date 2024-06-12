import 'package:bank_dash/core/cubits/drawer_cubit/drawer_cubit.dart';
import 'package:bank_dash/core/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/desktop_home_view_body.dart';

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
              DesktopHomeViewBody(cubit: cubit)
              //Expanded(child: DrawerCubit.get(context).currentDesktopView())
            ],
          ),
        );
      },
    );
  }
}
