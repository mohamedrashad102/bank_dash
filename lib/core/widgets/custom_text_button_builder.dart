import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_styles/app_styles.dart';
import 'custom_text_button.dart';

class CustomTextButtonBuilder {
  static normalWithText(
    BuildContext context, {
    required String text,
    required Function() onTap,
    double? width,
    double? hight,
    double? borderRadius,
  }) {
    return CustomTextButton(
      onTap: onTap,
      width: width,
      hight: hight,
      borderRadius: borderRadius,
      child: Text(
        text,
        style: AppStyles.medium.fontSize15(context).copyWith(
              color: Colors.white,
            ),
      ),
    );
  }

  static reversedWithText(
    BuildContext context, {
    required String text,
    Function()? onTap,
    double? width,
    double? hight,
    double? borderRadius,
  }) {
    return CustomTextButton(
      onTap: onTap,
      width: width,
      hight: hight,
      bgColor: Colors.white,
      borderRadius: borderRadius,
      borderColor: AppColors.contentColorBlue,
      child: Text(
        text,
        style: AppStyles.medium.fontSize12(context).copyWith(
              color: AppColors.contentColorBlue,
            ),
      ),
    );
  }
}
