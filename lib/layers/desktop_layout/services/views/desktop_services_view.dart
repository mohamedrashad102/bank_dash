import 'package:bank_dash/core/utils/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../mobile_layout/services/widgets/bank_services_list_section.dart';
import '../widgets/desktop_services_items_section.dart';

class DesktopServicesView extends StatelessWidget {
  const DesktopServicesView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DesktopServicesItemsSection(),
        const Gap(22),
        Row(
          children: [
            const Expanded(flex: 1, child: BankServicesListSection()),
            Expanded(
                flex: 2,
                child: SvgPicture.asset(
                  Assets.imagesServicesChart,
                  height: 400,
                )),
          ],
        )
      ],
    );
  }
}
