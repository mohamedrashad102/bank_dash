class TransactionModel {
  final bool isIncome;
  final String title;
  final String date;
  final int amount;
  final String id;
  final String type;
  final String card;

  const TransactionModel({
    required this.isIncome,
    required this.title,
    required this.date,
    required this.amount,
    required this.id,
    required this.type,
    required this.card,
  });
}
