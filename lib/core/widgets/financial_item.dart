import 'package:bank_dash/core/widgets/custom_icon.dart';
import 'package:bank_dash/layers/mobile_layout/account/widgets/text_column.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../models/financial_item_model.dart';

class FinancialItem extends StatelessWidget {
  const FinancialItem({
    super.key,
    required this.financialItemModel,
    this.withoutDollar = false,
  });
  final FinancialItemModel financialItemModel;
  final bool withoutDollar;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 18,
      ),
      child: Row(
        children: [
          CustomIcon(
            isCircle: true,
            icon: financialItemModel.icon,
            bgColor: financialItemModel.bgColor,
          ),
          const Gap(10),
          Flexible(
            child: TextColumn(
              title: financialItemModel.title,
              value: financialItemModel.value,
              withoutDollar: withoutDollar,
            ),
          ),
        ],
      ),
    );
  }
}
