import 'package:bank_dash/core/widgets/title_text.dart';
import 'package:bank_dash/layers/mobile_layout/account/widgets/invoice_items.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class InoviceSection extends StatelessWidget {
  const InoviceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText(title: 'Invoices Sent'),
        Gap(12),
        InvoiceItems(),
      ],
    );
  }
}
