import 'package:bank_dash/core/cubits/drawer_cubit/recent_transactions/recent_transactions_cubit.dart';
import 'package:bank_dash/core/utils/app_styles/app_styles.dart';
import 'package:bank_dash/core/utils/assets.dart';
import 'package:bank_dash/layers/desktop_layout/transactions/widgets/desktop_transactions_table_title.dart';
import 'package:bank_dash/layers/mobile_layout/transactions/models/transaction_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class DesktopTransactionsTable extends StatelessWidget {
  const DesktopTransactionsTable({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecentTransactionsCubit, RecentTransactionsCubitState>(
      builder: (context, state) {
        final cubit = RecentTransactionsCubit.get(context);
        return Container(
          height: 350,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          padding: const EdgeInsets.all(20),
          child: Table(
            columnWidths: _columnWidth,
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              _tableTitlesRow(),
              ...cubit.pageTransactions.map(
                (transaction) => _tableBodyRow(
                  context: context,
                  transaction: transaction,
                  isLast: cubit.pageTransactions.last == transaction,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Map<int, TableColumnWidth> get _columnWidth {
    return const {
      0: FlexColumnWidth(3),
      1: FlexColumnWidth(2),
      2: FlexColumnWidth(2),
      3: FlexColumnWidth(3),
      4: FlexColumnWidth(3),
      5: FlexColumnWidth(2),
      6: FlexColumnWidth(2),
    };
  }

  TableRow _tableTitlesRow() {
    return const TableRow(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xffE8E8E8),
          ),
        ),
      ),
      children: [
        DesktopTransactionsTableTitle('Description'),
        DesktopTransactionsTableTitle('Transaction ID'),
        DesktopTransactionsTableTitle('Type'),
        DesktopTransactionsTableTitle('Card'),
        DesktopTransactionsTableTitle('Date'),
        DesktopTransactionsTableTitle('Amount'),
        DesktopTransactionsTableTitle('Receipt'),
      ],
    );
  }

  TableRow _tableBodyRow({
    required BuildContext context,
    required TransactionModel transaction,
    required bool isLast,
  }) {
    List<Widget> children = [
      _descriptionColumn(context, transaction),
      _customColumn(context, '#${transaction.id}'),
      _customColumn(context, transaction.type),
      _cardColumn(context, transaction.card),
      _customColumn(context, transaction.date),
      _amountColumn(context, transaction.amount),
      _receiptColumn(context),
    ];
    return TableRow(
      decoration: BoxDecoration(
        border: Border(
          bottom: isLast
              ? BorderSide.none
              : const BorderSide(
                  color: Color(0xffE8E8E8),
                ),
        ),
      ),
      children: children
          .map(
            (child) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: child,
            ),
          )
          .toList(),
    );
  }

  Row _descriptionColumn(BuildContext context, TransactionModel transaction) {
    return Row(
      children: [
        SvgPicture.asset(
          transaction.isIncome
              ? Assets.imagesTransactionIncome
              : Assets.imagesTransactionExpense,
        ),
        const Gap(10),
        Text(
          transaction.title,
          style: AppStyles.medium.fontSize12(context).copyWith(
                color: Colors.black,
              ),
        ),
      ],
    );
  }

  Text _customColumn(BuildContext context, String text) {
    return Text(
      text,
      style: AppStyles.regular.fontSize12(context).copyWith(
            color: Colors.black,
          ),
    );
  }

  Text _cardColumn(BuildContext context, String cardNumber) {
    return Text(
      cardNumber
          .split(' ')
          .asMap()
          .entries
          .map((entry) =>
              (entry.key == 0 || entry.key == 3) ? entry.value : '****')
          .join(' '),
      style: AppStyles.regular.fontSize12(context).copyWith(
            color: Colors.black,
          ),
    );
  }

  Text _amountColumn(BuildContext context, int amount) {
    final isNegative = amount < 0;
    final absMount = amount.abs().toString();
    var dotsAmount = '';
    for (int i = absMount.length - 1; i >= 0; i--) {
      int index = absMount.length - 1 - i;
      if (index != 0 && index % 3 == 0) {
        dotsAmount += ',${absMount[i]}';
      } else {
        dotsAmount += absMount[i];
      }
    }

    dotsAmount = dotsAmount.split('').reversed.join();
    final finalAmount = isNegative ? '-\$$dotsAmount' : '\$$dotsAmount';
    return Text(
      finalAmount,
      style: AppStyles.medium.fontSize12(context).copyWith(
            color: isNegative ? Colors.red : Colors.green,
          ),
    );
  }

  Container _receiptColumn(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: const Color(0xff123288),
            width: 1,
          )),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      alignment: Alignment.center,
      child: Text(
        'Download',
        style: AppStyles.medium.fontSize14(context).copyWith(
              color: const Color(0xff123288),
            ),
      ),
    );
  }
}
