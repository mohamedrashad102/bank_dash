import 'package:bank_dash/layers/mobile_layout/account/widgets/debit_section.dart';
import 'package:bank_dash/layers/mobile_layout/account/widgets/inovice_section.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DebitSectionAndInvoiceSection extends StatelessWidget {
  const DebitSectionAndInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 2,
          child: SizedBox(
            child: DebitSection(
              width: 20,
            ),
          ),
        ),
        Gap(30),
        Expanded(child: InoviceSection()),
      ],
    );
  }
}
