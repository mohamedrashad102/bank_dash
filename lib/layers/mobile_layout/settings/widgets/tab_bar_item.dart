import 'package:bank_dash/core/utils/app_colors.dart';
import 'package:bank_dash/core/utils/app_styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TabBarItem extends StatelessWidget {
  const TabBarItem({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });
  final String text;
  final bool isSelected;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              // Determine the width of the text using the constraints
              final textSpan = TextSpan(
                text: text,
                style: AppStyles.medium.fontSize13(context).copyWith(
                      color: isSelected
                          ? AppColors.contentColorBlue
                          : AppColors.contentColorGrey,
                    ),
              );
              final textPainter = TextPainter(
                text: textSpan,
                maxLines: 1,
                textDirection: TextDirection.ltr,
              );
              textPainter.layout(minWidth: 0, maxWidth: constraints.maxWidth);
              final textWidth = textPainter.size.width;
              return Column(
                children: [
                  Text(
                    text,
                    style: AppStyles.medium.fontSize13(context).copyWith(
                          color: isSelected
                              ? AppColors.contentColorBlue
                              : AppColors.contentColorGrey,
                        ),
                  ),
                  const Gap(8),
                  Container(
                    decoration: BoxDecoration(
                      color: isSelected
                          ? AppColors.contentColorBlue
                          : Colors.transparent,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    height: 2.5,
                    width: textWidth + 15,
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
