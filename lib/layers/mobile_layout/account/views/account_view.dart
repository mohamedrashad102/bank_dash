import 'package:bank_dash/core/widgets/title_text.dart';
import 'package:bank_dash/layers/mobile_layout/account/models/account_item_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/widgets/custom_icon.dart';
import '../../../../core/widgets/custom_scaffold.dart';
import '../widgets/all_account_items.dart';
import '../widgets/title_date_column.dart';

class AccountsView extends StatelessWidget {
  const AccountsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      title: 'Account',
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            children: [AllAccountItems(), Gap(22), LastTransactionSection()],
          ),
        ),
      ),
    );
  }
}

class LastTransactionSection extends StatelessWidget {
  const LastTransactionSection({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TitleText(title: 'Last Transaction'),
      ],
    );
  }
}

class LastTransactionItem extends StatelessWidget {
  const LastTransactionItem({
    super.key,
    required this.transactionItemModel,
  });
  final TransactionItemModel transactionItemModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomIcon(
          icon: transactionItemModel.icon,
          bgColor: transactionItemModel.bgColor,
        ),
        const Gap(10),
        TitleDateColumn(transactionItemModel: transactionItemModel),
        const Spacer(),
        Text(
          transactionItemModel.value,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
