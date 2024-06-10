import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_scaffold.dart';
import '../widgets/loans_view_body.dart';

class LoansView extends StatelessWidget {
  const LoansView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      title: 'Loans',
      body: LoansViewBody(),
    );
  }
}
