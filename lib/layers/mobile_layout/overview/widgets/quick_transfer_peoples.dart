import 'package:bank_dash/layers/mobile_layout/overview/widgets/transfer__row_items.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class QuickTransferPeoples extends StatefulWidget {
  const QuickTransferPeoples({
    super.key,
  });

  @override
  State<QuickTransferPeoples> createState() => _QuickTransferPeoplesState();
}

class _QuickTransferPeoplesState extends State<QuickTransferPeoples> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SingleChildScrollView(
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            child: const TransferRowItems(),
          ),
        ),
        const Gap(12),
        Align(
          alignment: Alignment.center,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(5),
            child: IconButton(
              icon: const Icon(
                Icons.arrow_forward_ios,
                color: Color(0xff718EBF),
                size: 30,
              ),
              padding: EdgeInsets.zero,
              onPressed: () {
                final position = _scrollController.position.pixels;
                _scrollController.animateTo(
                  position + 85,
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInOut,
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
