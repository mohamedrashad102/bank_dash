import 'package:bank_dash/core/widgets/custom_text_button_builder.dart';
import 'package:bank_dash/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/models/text_field_model.dart';
import 'profile_image.dart';

class EditProfileTabBody extends StatelessWidget {
  const EditProfileTabBody({super.key});

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
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const ProfileImage(),
            const Gap(20),
            ...textFieldModels.map((model) => Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: CustomTextField(model: model),
                )),
            CustomTextButtonBuilder.normalWithText(
              context,
              text: 'Save',
              onTap: () {},
            ),
            const Gap(15),
          ],
        ),
      ),
    );
  }
}
