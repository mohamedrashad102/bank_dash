import 'package:bank_dash/core/utils/app_colors.dart';
import 'package:bank_dash/core/utils/assets.dart';
import 'package:bank_dash/layers/mobile_layout/services/models/service_item_model.dart';
import 'package:flutter/material.dart';

import 'service_item.dart';

class ServicesList extends StatelessWidget {
  const ServicesList({super.key});

  static List<ServiceItemModel> serviceItems = [
    ServiceItemModel(
      icon: Assets.imagesLoansPink,
      bgColor: AppColors.bgColorPink,
      title: 'Business loans',
      subtitle: 'It is a long established',
    ),
    ServiceItemModel(
      icon: Assets.imagesBagLoans,
      bgColor: AppColors.bgColorYellow,
      title: 'Checking accounts',
      subtitle: 'It is a long established',
    ),
    ServiceItemModel(
      icon: Assets.imagesBusinessLoansPink,
      bgColor: AppColors.bgColorPink,
      title: 'Savings accounts',
      subtitle: 'It is a long established',
    ),
    ServiceItemModel(
      icon: Assets.imagesCreditCardBlue,
      bgColor: AppColors.bgColorBlue,
      title: 'Debit and credit cards',
      subtitle: 'It is a long established',
    ),
    ServiceItemModel(
      icon: Assets.imagesSafety,
      bgColor: AppColors.bgColorMintGreen,
      title: 'Life Insurance',
      subtitle: 'It is a long established',
    ),
    ServiceItemModel(
      icon: Assets.imagesLoansPink,
      bgColor: AppColors.bgColorPink,
      title: 'Business loans',
      subtitle: 'It is a long established',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: serviceItems
          .map(
            (serviceItemModel) => Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: ServiceItem(serviceItemModel: serviceItemModel),
            ),
          )
          .toList(),
    );
  }
}
