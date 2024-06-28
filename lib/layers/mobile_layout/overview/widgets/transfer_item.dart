import 'package:bank_dash/core/utils/app_styles/app_styles.dart';
import 'package:bank_dash/layers/mobile_layout/overview/models/transfer_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TransferItem extends StatelessWidget {
  const TransferItem({super.key, required this.transfer});

  final TransferModel transfer;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(transfer.photoPath),
          radius: 35,
        ),
        const Gap(12),
        Text(
          transfer.name,
          style: AppStyles.regular.fontSize12(context).copyWith(
                color: const Color(0XFF232323),
              ),
        ),
        Text(
          transfer.job,
          style: AppStyles.regular.fontSize12(context),
        ),
      ],
    );
  }
}
