import 'package:bank_dash/layers/mobile_layout/credit_cards/widgets/add_new_card_section.dart';
import 'package:bank_dash/layers/mobile_layout/credit_cards/widgets/card_expense_statistics_scetion.dart';
import 'package:bank_dash/layers/mobile_layout/credit_cards/widgets/card_list_section.dart';
import 'package:bank_dash/layers/mobile_layout/credit_cards/widgets/card_settings_section.dart';
import 'package:bank_dash/layers/mobile_layout/credit_cards/widgets/my_credit_cards_section.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CreditCardsViewBody extends StatelessWidget {
  const CreditCardsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            MyCreditCardsSection(),
            Gap(22),
            CardExpenseStatisticsScetion(),
            Gap(22),
            CardListSection(),
            Gap(12), // becuase i made a gap in the CardListSection 10 px --> 10+12=22
            AddNewCardSection(),
            Gap(22),
            CardSettingsSection(),
            Gap(22),
          ],
        ),
      ),
    );
  }
}
