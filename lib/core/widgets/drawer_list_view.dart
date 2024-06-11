import 'package:bank_dash/core/cubits/drawer_cubit/drawer_cubit.dart';
import 'package:bank_dash/core/models/drawer_model.dart';
import 'package:bank_dash/core/widgets/drawer_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class DrawerListView extends StatelessWidget {
  const DrawerListView({
    super.key,
    required this.platformNumber,
  });
  final int platformNumber;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DrawerCubit, DrawerCubitState>(
      builder: (context, state) {
        final cubit = DrawerCubit.get(context);
        late List<DrawerModel> items;
        switch (platformNumber) {
          case 1: // is mobile
            items = cubit.mobileDrawerItems;
            break;
          case 2: // is desktop
            items = cubit.desktopDrawerItems;
            break;
          default:
        }

        return ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) => DrawerListViewItem(
            item: items[index],
            isSelected: cubit.selectedIndex == index,
            onTap: () {
              DrawerCubit.get(context).changeDrawer(index);
              if (platformNumber == 1) {
                context.pop(context);
              }
            },
          ),
          itemCount: items.length,
        );
      },
    );
  }
}
