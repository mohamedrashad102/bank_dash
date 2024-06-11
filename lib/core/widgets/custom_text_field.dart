import 'package:bank_dash/core/utils/app_styles/app_styles.dart';
import 'package:bank_dash/core/models/text_field_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.model,
  });
  final TextFieldModel model;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          model.title,
          style: AppStyles.regular.fontSize13(context).copyWith(
                color: const Color(0XFF232323),
              ),
        ),
        const Gap(10),
        TextField(
          decoration: InputDecoration(
            hintText: model.hintText,
            contentPadding: const EdgeInsets.all(15),
            hintStyle: AppStyles.regular.fontSize12(context),
            border: buildTextFieldBorder(),
            enabledBorder: buildTextFieldBorder(),
            focusedBorder: buildTextFieldBorder(),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder buildTextFieldBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        width: 1,
        color: Color(0xffDFEAF2),
      ),
    );
  }
}
