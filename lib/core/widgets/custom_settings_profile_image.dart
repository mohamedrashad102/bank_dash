import 'package:bank_dash/core/utils/app_colors.dart';
import 'package:bank_dash/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomSettingsProfileImage extends StatelessWidget {
  const CustomSettingsProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        const CircleAvatar(
          radius: 80,
          backgroundImage: AssetImage(
            Assets.imagesUs,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(7),
          decoration: const BoxDecoration(
            color: AppColors.contentColorBlue,
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.edit,
            color: Colors.white,
            size: 25,
          ),
        ),
      ],
    );
  }
}
