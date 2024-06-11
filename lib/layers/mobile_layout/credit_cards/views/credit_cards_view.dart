import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_scaffold.dart';
import '../widgets/credit_cards_view_body.dart';

class CreditCardsView extends StatelessWidget {
  const CreditCardsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const MobileCustomScaffold(
      title: 'Credit Cards',
      body: CreditCardsViewBody(),
    );
  }
}
