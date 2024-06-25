class TransactionModel {
  final bool isIncome;
  final String title;
  final String date;
  final int amount;

  const TransactionModel({
    required this.isIncome,
    required this.title,
    required this.date,
    required this.amount,
  });
}
