import 'package:flutter/material.dart';

class CustomDesktopBody extends StatelessWidget {
  const CustomDesktopBody({
    super.key,
    this.currentDesktopViewBody,
  });
  final Widget? currentDesktopViewBody;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 40),
      child: currentDesktopViewBody,
    );
  }
}
