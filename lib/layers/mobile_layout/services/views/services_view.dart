import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/widgets/custom_scaffold.dart';
import '../widgets/bank_services_list_section.dart';
import '../widgets/services_items_section.dart';

class ServicesView extends StatelessWidget {
  const ServicesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const MobileCustomScaffold(
      title: 'Services',
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            children: [
              ServicesItemsSection(),
              Gap(22),
              BankServicesListSection()
            ],
          ),
        ),
      ),
    );
  }
}
