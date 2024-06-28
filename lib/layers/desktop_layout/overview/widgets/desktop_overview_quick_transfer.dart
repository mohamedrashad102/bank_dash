import 'package:bank_dash/core/utils/assets.dart';
import 'package:bank_dash/core/widgets/title_text.dart';
import 'package:bank_dash/layers/mobile_layout/overview/models/transfer_model.dart';
import 'package:bank_dash/layers/mobile_layout/overview/widgets/quick_transfer_bottom_section.dart';
import 'package:bank_dash/layers/mobile_layout/overview/widgets/quick_transfer_peoples.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DesktopOverviewQuickTransfer extends StatelessWidget {
  const DesktopOverviewQuickTransfer({super.key});

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleText(title: 'Quick Transfer'),
        const Gap(12),
        Container(
          height: 215,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          padding: const EdgeInsets.all(10),
          child: const Column(
            children: [
              QuickTransferPeoples(),
              Gap(12),
              QuickTransferBottomSection(),
            ],
          ),
        ),
      ],
    );
  }
}
