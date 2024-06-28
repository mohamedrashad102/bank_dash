enum Date { jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec }

class ExpenseModel {
  final int price;
  final Date date;

  ExpenseModel({
    required this.price,
    required this.date,
  });
}
