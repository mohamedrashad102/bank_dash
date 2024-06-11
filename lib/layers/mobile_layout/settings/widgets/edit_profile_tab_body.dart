import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'profile_image.dart';

class EditProfileTabBody extends StatelessWidget {
  const EditProfileTabBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ProfileImage(),
        Gap(20),
        
      ],
    );
  }
}
