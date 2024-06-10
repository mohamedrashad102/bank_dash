import 'package:bank_dash/core/widgets/title_text.dart';
import 'package:bank_dash/layers/mobile_layout/services/widgets/services_list.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BankServicesListSection extends StatelessWidget {
  const BankServicesListSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText(
          title: 'Bank Services List',
        ),
        Gap(12),
        ServicesList(),
      ],
    );
  }
}
