import 'package:bank_dash/core/utils/app_styles/app_styles.dart';
import 'package:bank_dash/core/widgets/custom_icon.dart';
import 'package:bank_dash/layers/mobile_layout/credit_cards/widgets/custom_text_column.dart';
import 'package:bank_dash/layers/mobile_layout/services/models/service_item_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ServiceItem extends StatelessWidget {
  final ServiceItemModel serviceItemModel;

  const ServiceItem({super.key, required this.serviceItemModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Row(
            children: [
              CustomIcon(
                icon: serviceItemModel.icon,
                bgColor: serviceItemModel.bgColor,
              ),
              const Gap(16),
              CustomTextColumn(
                label: serviceItemModel.title,
                data: serviceItemModel.subtitle,
              ),
            ],
          ),
          const Spacer(),
          Text(
            'view details',
            style: AppStyles.bold
                .fontSize12(context)
                .copyWith(color: const Color(0xff1814F3)),
          ),
        ],
      ),
    );
  }
}
