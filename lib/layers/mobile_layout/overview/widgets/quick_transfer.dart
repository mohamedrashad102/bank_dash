import 'package:bank_dash/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/widgets/title_text.dart';
import '../models/transfer_model.dart';
import 'quick_transfer_bottom_section.dart';
import 'quick_transfer_peoples.dart';

class QuickTransfer extends StatelessWidget {
  const QuickTransfer({super.key});

  static List<TransferModel> transfers = [
    const TransferModel(
      photoPath: Assets.imagesLivia,
      name: 'Livia Bator',
      job: 'CEO',
    ),
    const TransferModel(
      photoPath: Assets.imagesRandy,
      name: 'Randy Press',
      job: 'Director',
    ),
    const TransferModel(
      photoPath: Assets.imagesWorkman,
      name: 'Workman',
      job: 'Disigner',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText(title: 'Quick Transfer'),
        Gap(12),
        QuickTransferPeoples(),
        Gap(12),
        QuickTransferBottomSection(),
      ],
    );
  }
}
