import 'package:bank_dash/core/widgets/custom_text_button_builder.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'profile_image.dart';

class EditProfileTabBody extends StatelessWidget {
  const EditProfileTabBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ProfileImage(),
        const Gap(20),
        CustomTextButtonBuilder.normalWithText(
          context,
          text: 'Save',
          onTap: () {},
        ),
        const Gap(15),
      ],
    );
  }
}
