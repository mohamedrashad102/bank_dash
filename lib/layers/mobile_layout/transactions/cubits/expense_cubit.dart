import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/expense_model.dart';

part 'expense_cubit_state.dart';

class ExpenseCubit extends Cubit<ExpenseCubitState> {
  ExpenseCubit() : super(ExpenseInitialState());

  static ExpenseCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  final List<ExpenseModel> expenses = [
    for (var i = 0; i < 10; i++)
      ExpenseModel(
        price: (Random().nextInt(30) + 1) * 1000,
        date: Date.values[i],
      ),
  ];

  void changeChangeIndex(int index) {
    currentIndex = index;
    emit(ExpenseSuccessState());
  }

  double calcPercentage(int price) {
    int min = expenses[0].price;
    int max = expenses[0].price;

    for (var i = 0; i < expenses.length; i++) {
      if (expenses[i].price < min) {
        min = expenses[i].price;
      }
      if (expenses[i].price > max) {
        max = expenses[i].price;
      }
    }
    return ((price - min) / (max - min)) * 100 + 40;
  }
}
