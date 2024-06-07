import 'package:bank_dash/core/widgets/title_text.dart';
import 'package:bank_dash/layers/mobile_layout/credit_cards/widgets/card_settings_item_list.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CardSettingsSection extends StatelessWidget {
  const CardSettingsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText(
          title: 'Card Settings',
        ),
        Gap(12),
        CardSettingsItemList(),
      ],
    );
  }
}
