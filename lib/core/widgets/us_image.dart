import 'package:bank_dash/core/utils/assets.dart';
import 'package:flutter/material.dart';

class UsImage extends StatelessWidget {
  const UsImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundImage: AssetImage(
        Assets.imagesUs,
      ),
    );
  }
}
