import 'package:bank_dash/layers/mobile_layout/loans/widgets/loans_item.dart';
import 'package:flutter/material.dart';

class LoansItemsList extends StatelessWidget {
  const LoansItemsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          8,
          (index) => const Padding(
                padding: EdgeInsets.only(bottom: 21.0),
                child: LoansItem(),
              )),
    );
  }
}
