import 'package:bank_dash/core/models/text_field_model.dart';
import 'package:bank_dash/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DesktopTextFieldsList extends StatelessWidget {
  const DesktopTextFieldsList({
    super.key,
  });
  static List<TextFieldModel> models = [
    TextFieldModel(
      title: 'Card Type',
      hintText: 'Visa',
    ),
    TextFieldModel(
      title: 'Card Name',
      hintText: 'MM/YY',
    ),
    TextFieldModel(
      title: 'Card Number',
      hintText: '**** **** **** ****',
    ),
    TextFieldModel(
      title: 'Expiration Date',
      hintText: '1 July 2024',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomTextField(
                model: models[0],
              ),
            ),
            const Gap(15),
            Expanded(
              child: CustomTextField(
                model: models[1],
              ),
            ),
          ],
        ),
        const Gap(12),
        Row(
          children: [
            Expanded(
              child: CustomTextField(
                model: models[2],
              ),
            ),
            const Gap(12),
            Expanded(
              child: CustomTextField(
                model: models[3],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

