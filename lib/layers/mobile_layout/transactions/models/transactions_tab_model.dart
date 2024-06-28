import 'transaction_model.dart';

class TransactionsTabModel {
  final String title;
  final List<TransactionModel> transactions;

  const TransactionsTabModel({
    required this.title,
    required this.transactions,
  });
}
