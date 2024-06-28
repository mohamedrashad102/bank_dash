import 'package:bank_dash/core/utils/app_colors.dart';
import 'package:bank_dash/core/utils/app_styles/app_styles.dart';
import 'package:bank_dash/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class QuickTransferBottomSection extends StatelessWidget {
  const QuickTransferBottomSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Write Amount',
          style: AppStyles.regular.fontSize12(context),
        ),
        const Gap(40),
        Stack(
          alignment: Alignment.centerRight,
          children: [
            Container(
              height: 40,
              width: 200,
              decoration: BoxDecoration(
                color: const Color(0xffEDF1F7),
                borderRadius: BorderRadius.circular(20),
              ),
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                '525.50',
                style: AppStyles.regular.fontSize12(context),
              ),
            ),
            Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                color: AppColors.contentColorBlue,
                borderRadius: BorderRadius.circular(20),
              ),
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Send',
                    style: AppStyles.medium.fontSize13(context).copyWith(
                          color: Colors.white,
                        ),
                  ),
                  const Gap(10),
                  SvgPicture.asset(
                    Assets.imagesSendIcon,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
