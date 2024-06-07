import 'package:bank_dash/core/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'add_new_card_container.dart';

class AddNewCardSection extends StatelessWidget {
  const AddNewCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText(title: 'Add New Card'),
        Gap(15),
        AddNewCardContainer()
      ],
    );
  }
}
