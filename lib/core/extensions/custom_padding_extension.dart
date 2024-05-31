import 'package:flutter/material.dart';

extension CustomPadding on Widget {
  Widget withPadding({EdgeInsetsGeometry? padding}) => Padding(
        padding: padding ??
            const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 25,
            ),
        child: this,
      );
}
