import 'package:bank_dash/core/models/text_field_model.dart';
import 'package:bank_dash/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DesktopSettingsTextFieldRow extends StatelessWidget {
  const DesktopSettingsTextFieldRow({
    super.key,
    required this.textFieldModels1,
    required this.textFieldModels2,
  });

  final TextFieldModel textFieldModels1;
  final TextFieldModel textFieldModels2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomTextField(
            model: textFieldModels1,
          ),
        ),
        const Gap(40),
        Expanded(
          child: CustomTextField(
            model: textFieldModels2,
          ),
        ),
      ],
    );
  }
}
