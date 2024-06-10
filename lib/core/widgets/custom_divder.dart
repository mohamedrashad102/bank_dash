import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Color(0xffF4F5F7),
      thickness: 1,
      height: 20,
    );
  }
}
