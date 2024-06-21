import 'package:bank_dash/core/utils/app_colors.dart';
import 'package:bank_dash/core/utils/app_styles/app_styles.dart';
import 'package:bank_dash/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../../core/widgets/title_text.dart';
import '../models/transfer_model.dart';
import 'transfer_items.dart';

class QuickTransfer extends StatelessWidget {
  const QuickTransfer({super.key});

  static List<TransferModel> transfers = [
    const TransferModel(
      photoPath: Assets.imagesLivia,
      name: 'Livia Bator',
      job: 'CEO',
    ),
    const TransferModel(
      photoPath: Assets.imagesRandy,
      name: 'Randy Press',
      job: 'Director',
    ),
    const TransferModel(
      photoPath: Assets.imagesWorkman,
      name: 'Workman',
      job: 'Disigner',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Gap(12),
        const TitleText(title: 'Quick Transfer'),
        const Gap(12),
        Row(
          children: [
            const TransferItems(),
            const Gap(12),
            Align(
              alignment: Alignment.center,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(10),
                child: const Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xff718EBF),
                  size: 30,
                ),
              ),
            ),
          ],
        ),
        const Gap(12),
        Row(
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
        ),
        const Gap(12),
      ],
    );
  }
}
