import 'package:bank_dash/core/models/financial_item_model.dart';
import 'package:bank_dash/core/widgets/financial_item.dart';
import 'package:flutter/material.dart';

class CustomScrollRow extends StatelessWidget {
  const CustomScrollRow({
    super.key,
    required this.financialItems,
    this.withoutDollar = false,
  });

  final List<FinancialItemModel> financialItems;
  final bool withoutDollar;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: SingleChildScrollView(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(financialItems.length, (index) {
            return SizedBox(
              width: 230,
              child: Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: FinancialItem(
                  financialItemModel: financialItems[index],
                  withoutDollar: withoutDollar,
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
