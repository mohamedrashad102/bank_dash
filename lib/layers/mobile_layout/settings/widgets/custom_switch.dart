import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_styles/app_styles.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({
    super.key,
    required this.body,
  });

  final String body;

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool _switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Switch(
          value: _switchValue,
          onChanged: (value) {
            setState(() {
              _switchValue = value;
            });
          },
          activeColor: Colors.white,
          inactiveTrackColor: const Color(0xffDFEAF2),
          activeTrackColor: const Color(0xff16DBCC),
        ),
        const Gap(12),
        Expanded(
          child: Text(
            widget.body,
            style: AppStyles.regular.fontSize13(context),
          ),
        ),
      ],
    );
  }
}
