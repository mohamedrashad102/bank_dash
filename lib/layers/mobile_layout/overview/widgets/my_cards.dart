import 'package:bank_dash/core/utils/app_styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/widgets/title_text.dart';
import '../models/credit_card_model.dart';

class MyCards extends StatelessWidget {
  const MyCards({super.key});

  static List<CreditCardModel> cards = [
    CreditCardModel(
      balance: '1281.3',
      cardHolder: 'card Holder',
      validThru: '12/22',
      cardNumber: '3142 1293 4394 9243',
    ),
    CreditCardModel(
      balance: '1281.3',
      cardHolder: 'card Holder',
      validThru: '12/22',
      cardNumber: '3142 1293 4394 9243',
    ),
    CreditCardModel(
      balance: '1281.3',
      cardHolder: 'card Holder',
      validThru: '12/22',
      cardNumber: '3142 1293 4394 9243',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const TitleText(
              title: 'My Cards',
            ),
            const Spacer(),
            Text(
              'See All',
              style: AppStyles.semiBold.fontSize14(context),
            ),
          ],
        ),
        const Gap(12),
        SizedBox(
          height: 220,
          child: PageView.builder(
            itemBuilder: (context, index) =>
                CreditCardWidget(card: cards[index]),
            itemCount: cards.length,
          ),
        ),
        // SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   child: Row(
        //     children:
        //         cards.map((card) => CreditCardWidget(card: card)).toList(),
        //   ),
        // ),
      ],
    );
  }
}

class CreditCardWidget extends StatelessWidget {
  final CreditCardModel card;

  const CreditCardWidget({super.key, required this.card});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: double.infinity,
          height: 220,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
              colors: [
                Color(0xFF4C49ED),
                Color(0xFF0A06F4),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CreditCardTopSection(card: card),
              const Gap(20),
              CreditCardMiddleSection(card: card),
              const SizedBox(height: 10),
              const Gap(20),
              CreditCardBottomSection(card: card),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(.15),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
        ),
      ],
    );
  }
}

class CreditCardBottomSection extends StatelessWidget {
  const CreditCardBottomSection({
    super.key,
    required this.card,
  });

  final CreditCardModel card;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          card.cardNumber,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
        const Icon(
          Icons.credit_card,
          color: Colors.white70,
          size: 30,
        ),
      ],
    );
  }
}

class CreditCardMiddleSection extends StatelessWidget {
  const CreditCardMiddleSection({
    super.key,
    required this.card,
  });

  final CreditCardModel card;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'CARD HOLDER',
              style: AppStyles.regular.fontSize12(context).copyWith(
                    color: Colors.white.withOpacity(0.7),
                  ),
            ),
            Text(
              card.cardHolder,
              style: AppStyles.semiBold.fontSize15(context),
            ),
          ],
        ),
        const Gap(60),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'VALID THRU',
              style: AppStyles.regular
                  .fontSize12(context)
                  .copyWith(color: Colors.white.withOpacity(0.7)),
            ),
            Text(
              card.validThru,
              style: AppStyles.semiBold.fontSize15(context),
            ),
          ],
        ),
      ],
    );
  }
}

class CreditCardTopSection extends StatelessWidget {
  const CreditCardTopSection({
    super.key,
    required this.card,
  });

  final CreditCardModel card;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Balance',
              style: AppStyles.regular.fontSize12(context).copyWith(
                    color: Colors.white,
                  ),
            ),
            const Gap(1),
            Text(
              '\$${card.balance}',
              style: AppStyles.semiBold.fontSize16(context).copyWith(
                    color: Colors.white,
                  ),
            ),
          ],
        ),
        const Spacer(),
        const Icon(
          Icons.card_giftcard,
        ),
      ],
    );
  }
}
