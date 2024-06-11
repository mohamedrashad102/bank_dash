import 'package:bank_dash/core/widgets/custom_text_button_builder.dart';
import 'package:bank_dash/core/widgets/title_text.dart';
import 'package:bank_dash/layers/mobile_layout/settings/widgets/custom_switch.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/models/text_field_model.dart';
import '../../../../core/widgets/custom_text_field.dart';

class SecurityTabBody extends StatelessWidget {
  const SecurityTabBody({super.key});

  static List<TextFieldModel> textFieldModels = [
    TextFieldModel(
      title: 'Current Password',
      hintText: '*********',
    ),
    TextFieldModel(
      title: 'New Password',
      hintText: '*********',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitleText(title: 'Two-factor Authentication'),
          const Gap(15),
          const CustomSwitch(body: 'Enable or disable two factor authentication'),
          const Gap(15),
          const TitleText(title: 'Change Password'),
          const Gap(10),
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
    );
  }
}
