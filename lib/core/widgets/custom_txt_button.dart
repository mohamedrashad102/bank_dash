import 'package:bank_dash/core/utils/app_styles/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTxtButton extends StatelessWidget {
  const CustomTxtButton({
    super.key,
    required this.txt,
    this.onPressed,
    this.isActive = true,
  });
  final String txt;
  final bool isActive;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: isActive ? onPressed : null,
      child: Text(
        txt,
        style: AppStyles.bold.fontSize12(context).copyWith(
              color:
                  isActive ? const Color(0xff1814F3) : const Color(0xffC4C4C4),
            ),
      ),
    );
  }
}
