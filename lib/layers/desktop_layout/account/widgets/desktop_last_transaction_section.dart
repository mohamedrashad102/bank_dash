import 'package:bank_dash/core/widgets/title_text.dart';
import 'package:bank_dash/layers/desktop_layout/home/views/desktop_home_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'desktop_transaction_items.dart';

class DesktopLastTransactionSection extends StatelessWidget {
  const DesktopLastTransactionSection({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText(title: 'Last Transaction'),
        Gap(12),
        //DesktopLastTransctionItem()
        DesktopTransactionItems(),
      ],
    );
  }
}
