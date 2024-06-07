import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.child,
    this.onTap,
    this.width,
    this.hight,
    this.borderRadius,
    this.bgColor = AppColors.contentColorBlue,
    this.verticalPadding,
    this.horizontalPadding,
    this.borderColor,
  });
  final Function()? onTap;
  final double? width;
  final double? hight;
  final Widget child;
  final double? borderRadius;
  final Color bgColor;
  final Color? borderColor;
  final double? verticalPadding;
  final double? horizontalPadding;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: hight,
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding ?? 15,
          vertical: verticalPadding ?? 12,
        ),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: borderColor ?? bgColor, width: 1),
          borderRadius: BorderRadius.circular(borderRadius ?? 5),
          color: bgColor,
        ),
        child: child,
      ),
    );
  }
}
