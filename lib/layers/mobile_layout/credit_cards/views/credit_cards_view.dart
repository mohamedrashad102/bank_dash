import 'package:bank_dash/core/utils/app_colors.dart';
import 'package:bank_dash/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/widgets/custom_scaffold.dart';
import '../../../../core/widgets/title_text.dart';
import '../models/card_model.dart';
import '../widgets/card_expense_statistics_scetion.dart';
import '../widgets/card_item.dart';
import '../widgets/my_credit_cards_section.dart';

class CreditCardsView extends StatelessWidget {
  const CreditCardsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      title: 'Credit Cards',
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            children: [
              MyCreditCardsSection(),
              Gap(22),
              CardExpenseStatisticsScetion(),
              Gap(22),
              CardListSection(),
            ],
          ),
        ),
      ),
    );
  }
}

class CardListSection extends StatelessWidget {
  const CardListSection({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText(title: 'Card List'),
        Gap(12),
        CardsList(),
      ],
    );
  }
}

class CardsList extends StatelessWidget {
  const CardsList({
    super.key,
  });
  static List<CardModel> cardModels = [
    CardModel(
      icon: Assets.imagesCreditCardBlue,
      bgColor: AppColors.bgColorBlue,
      cardType: 'Secondary',
      bank: 'DBL Bank',
    ),
    CardModel(
      icon: Assets.imagesCreditCardPink,
      bgColor: AppColors.bgColorPink,
      cardType: 'Secondary',
      bank: 'BRC Bank',
    ),
    CardModel(
      icon: Assets.imagesCreditCardYellow,
      bgColor: AppColors.bgColorYellow,
      cardType: 'Secondary',
      bank: 'ABM Bank',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: cardModels
          .map(
            (e) => Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: CardItem(cardModel: e),
            ),
          )
          .toList(),
    );
  }
}
