import 'package:bank_dash/core/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';

import '../widgets/over_view_body.dart';

class OverviewView extends StatelessWidget {
  const OverviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return const MobileCustomScaffold(
      title: 'Overview',
      body: OverViewBody(),
    );
  }
}
