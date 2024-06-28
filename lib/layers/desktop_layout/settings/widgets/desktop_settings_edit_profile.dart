import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/models/text_field_model.dart';
import '../../../../core/widgets/custom_settings_profile_image.dart';
import '../../../../core/widgets/custom_text_button_builder.dart';
import 'desktop_settings_text_field_row.dart';

class DesktopSettingsEditProfile extends StatelessWidget {
  const DesktopSettingsEditProfile({super.key});

  static List<TextFieldModel> textFieldModels = [
    TextFieldModel(
      title: 'Your Name',
      hintText: 'Mohamed Rashad',
    ),
    TextFieldModel(
      title: 'User Name',
      hintText: 'mohamed_rashad102',
    ),
    TextFieldModel(
      title: 'Email',
      hintText: 'mohamedrashadhyg@gmail.com',
    ),
    TextFieldModel(
      title: 'Password',
      hintText: '*********',
    ),
    TextFieldModel(
      title: 'Date of Birth',
      hintText: '25 January 1990',
    ),
    TextFieldModel(
      title: 'Present Address',
      hintText: 'San Jose, California, USA',
    ),
    TextFieldModel(
      title: 'Permanent Address',
      hintText: 'San Jose, California, USA',
    ),
    TextFieldModel(
      title: 'City',
      hintText: 'San Jose',
    ),
    TextFieldModel(
      title: 'Postal Code',
      hintText: '45962',
    ),
    TextFieldModel(
      title: 'Country',
      hintText: 'USA',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomSettingsProfileImage(),
            const Gap(50),
            Expanded(
              child: Column(
                children: List.generate(
                  textFieldModels.length ~/ 2,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: DesktopSettingsTextFieldRow(
                        textFieldModels1: textFieldModels[index * 2],
                        textFieldModels2: textFieldModels[index * 2 + 1],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        const Gap(12),
        Align(
          alignment: Alignment.bottomRight,
          child: CustomTextButtonBuilder.normalWithText(
            context,
            text: 'Save',
            onTap: () {},
            width: 130,
          ),
        ),
      ],
    );
  }
}
