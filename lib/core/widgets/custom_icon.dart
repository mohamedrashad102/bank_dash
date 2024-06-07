import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key,
    required this.icon,
    required this.bgColor,
    this.isCircle = false,
  });
  final String icon;
  final Color bgColor;
  final bool isCircle;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(isCircle ? 50 : 12),
      ),
      padding: const EdgeInsets.all(12),
      child: SvgPicture.asset(
        icon,
      ),
    );
  }
}
