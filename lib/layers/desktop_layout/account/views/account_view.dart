import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_scaffold.dart';
import '../widgets/account_view_body.dart';

class AccountsView extends StatelessWidget {
  const AccountsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const MobileCustomScaffold(
      title: 'Account',
      body: AcountViewBody(),
    );
  }
}
