import 'package:bank_dash/core/utils/assets.dart';
import 'package:bank_dash/layers/mobile_layout/overview/models/transfer_model.dart';
import 'package:flutter/material.dart';

import 'transfer_item.dart';

class TransferItems extends StatelessWidget {
  const TransferItems({super.key});

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
    return Row(
      children: transfers
          .map(
            (transfer) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: TransferItem(transfer: transfer),
            ),
          )
          .toList(),
    );
  }
}
