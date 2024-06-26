import 'package:bank_dash/core/models/text_field_model.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_text_field.dart';

class TextFieldsList extends StatelessWidget {
  const TextFieldsList({
    super.key,
  });
  static List<TextFieldModel> listModels = [
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
      children: listModels
          .map((model) => Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: CustomTextField(model: model),
              ))
          .toList(),
    );
  }
}
