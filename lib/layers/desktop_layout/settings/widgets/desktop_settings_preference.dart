import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/models/text_field_model.dart';
import '../../../../core/widgets/custom_text_button_builder.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../../../core/widgets/title_text.dart';
import '../../../mobile_layout/settings/widgets/custom_switch.dart';
import 'desktop_settings_text_field_row.dart';

class DesktopSettingsPreference extends StatelessWidget {
  const DesktopSettingsPreference({super.key});

  static List<TextFieldModel> textFieldModels = [
    TextFieldModel(
      title: 'Currency',
      hintText: 'USD',
    ),
    TextFieldModel(
      title: 'Time Zone',
      hintText: '(GMT-12:00) International Date Line West',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DesktopSettingsTextFieldRow(
            textFieldModels1: textFieldModels[0],
            textFieldModels2: textFieldModels[1],
          ),
          const TitleText(title: 'Notification'),
          const Gap(15),
          const CustomSwitch(body: 'I send or receive digital currency'),
          const Gap(15),
          const CustomSwitch(body: 'I receive merchant order'),
          const Gap(15),
          const CustomSwitch(body: 'There are recommendation for my account'),
          const Gap(15),
          Align(
            alignment: Alignment.centerRight,
            child: CustomTextButtonBuilder.normalWithText(
              context,
              width: 150,
              text: 'Save',
              onTap: () {},
            ),
          ),
          const Gap(15),
        ],
      ),
    );
  }
}

class DesktopSettingsSecurity extends StatelessWidget {
  const DesktopSettingsSecurity({super.key});

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
          const CustomSwitch(
              body: 'Enable or disable two factor authentication'),
          const Gap(15),
          const TitleText(title: 'Change Password'),
          const Gap(10),
          ...textFieldModels.map(
            (model) => Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: CustomTextField(model: model),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: CustomTextButtonBuilder.normalWithText(
              context,
              width: 150,
              text: 'Save',
              onTap: () {},
            ),
          ),
          const Gap(15),
        ],
      ),
    );
  }
}
