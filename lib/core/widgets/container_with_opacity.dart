import 'package:flutter/material.dart';

class ContainerWithOpacity extends StatelessWidget {
  const ContainerWithOpacity({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 61,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.15),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
    );
  }
}
