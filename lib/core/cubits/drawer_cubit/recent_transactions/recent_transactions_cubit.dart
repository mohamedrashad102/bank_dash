import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layers/mobile_layout/transactions/models/transaction_model.dart';

part 'recent_transactions_cubit_state.dart';

class RecentTransactionsCubit extends Cubit<RecentTransactionsCubitState> {
  RecentTransactionsCubit() : super(TransactionsInitialState());

  static RecentTransactionsCubit get(context) => BlocProvider.of(context);

  // *------ private variables ------*
  final int _pagesPerRange = 4; // 4 pages in page slider
  final int _transactionsPerPage = 5; // 5 transactions per page

  final List<TransactionModel> _transactions = const [
    TransactionModel(
      title: 'Spotify Subscription',
      amount: -2500,
      isIncome: false,
      date: '28 Jan, 12.30 AM',
      type: 'Shopping',
      card: '2323 3948 9340 1383',
      id: '18349743',
    ),
    TransactionModel(
      id: '42389230',
      isIncome: false,
      title: 'Freepik Sales',
      date: '25 Jan, 10.40 PM',
      amount: 750,
      card: '1323 3948 9340 1383',
      type: 'Shopping',
    ),
    TransactionModel(
      id: '2345678901',
      isIncome: true,
      title: 'Mobile Service',
      date: '20 Jan, 10.40 PM',
      amount: -150,
      card: '4323 3948 9340 1383',
      type: 'Bill',
    ),
    TransactionModel(
      id: '3456789012',
      isIncome: true,
      title: 'Wilson',
      date: '15 Jan, 03.29 PM',
      amount: -1050,
      card: '1223 3948 9340 1383',
      type: 'Refund',
    ),
    TransactionModel(
      id: '4567890123',
      isIncome: false,
      title: 'Emilly',
      date: '14 Jan, 10.40 PM',
      amount: 840,
      card: '3223 3948 9340 1383',
      type: 'Salary',
    ),
    TransactionModel(
      id: '5678901234',
      isIncome: false,
      title: 'John',
      date: '1 Jan, 10.40 PM',
      amount: -750,
      card: '2223 3948 9340 1383',
      type: 'Shopping',
    ),
    TransactionModel(
      id: '6789012345',
      isIncome: true,
      title: 'Emily',
      date: '1 Jan, 03.29 PM',
      amount: 500,
      card: '9223 3948 9340 1383',
      type: 'Bonus',
    ),
    TransactionModel(
      id: '7890123456',
      isIncome: true,
      title: 'Mark',
      date: '1 Jan, 03.29 PM',
      amount: 1000,
      card: '8223 3948 9340 1383',
      type: 'Transfer',
    ),
    TransactionModel(
      id: '8901234567',
      isIncome: false,
      title: 'William',
      date: '1 Jan, 10.40 PM',
      amount: -250,
      card: '7223 3948 9340 1383',
      type: 'Shopping',
    ),
    TransactionModel(
      id: '9012345678',
      isIncome: false,
      title: 'Olivia',
      date: '1 Jan, 10.40 PM',
      amount: -600,
      card: '6223 3948 9340 1383',
      type: 'Shopping',
    ),
    TransactionModel(
      id: '0123456789',
      isIncome: true,
      title: 'Sophia',
      date: '1 Jan, 03.29 PM',
      amount: 800,
      card: '5223 3948 9340 1383',
      type: 'Salary',
    ),
    TransactionModel(
      id: '1234567890',
      isIncome: true,
      title: 'Jacob',
      date: '1 Jan, 03.29 PM',
      amount: 1500,
      card: '4223 3948 9340 1383',
      type: 'Transfer',
    ),
    TransactionModel(
      id: '2345678901',
      isIncome: false,
      title: 'Mia',
      date: '1 Jan, 10.40 PM',
      amount: -900,
      card: '3223 3948 9340 1383',
      type: 'Shopping',
    ),
    TransactionModel(
      id: '3456789012',
      isIncome: false,
      title: 'Emma',
      date: '1 Jan, 10.40 PM',
      amount: -1200,
      card: '2223 3948 9340 1383',
      type: 'Shopping',
    ),
    TransactionModel(
      title: 'Spotify Subscription',
      amount: -2500,
      isIncome: false,
      date: '28 Jan, 12.30 AM',
      type: 'Shopping',
      card: '2323 3948 9340 1383',
      id: '18349743',
    ),
    TransactionModel(
      id: '42389230',
      isIncome: false,
      title: 'Freepik Sales',
      date: '25 Jan, 10.40 PM',
      amount: 750,
      card: '1323 3948 9340 1383',
      type: 'Shopping',
    ),
    TransactionModel(
      id: '2345678901',
      isIncome: true,
      title: 'Mobile Service',
      date: '20 Jan, 10.40 PM',
      amount: -150,
      card: '4323 3948 9340 1383',
      type: 'Bill',
    ),
    TransactionModel(
      id: '3456789012',
      isIncome: true,
      title: 'Wilson',
      date: '15 Jan, 03.29 PM',
      amount: -1050,
      card: '1223 3948 9340 1383',
      type: 'Refund',
    ),
    TransactionModel(
      id: '4567890123',
      isIncome: false,
      title: 'Emilly',
      date: '14 Jan, 10.40 PM',
      amount: 840,
      card: '3223 3948 9340 1383',
      type: 'Salary',
    ),
    TransactionModel(
      id: '5678901234',
      isIncome: false,
      title: 'John',
      date: '1 Jan, 10.40 PM',
      amount: -750,
      card: '2223 3948 9340 1383',
      type: 'Shopping',
    ),
    TransactionModel(
      id: '6789012345',
      isIncome: true,
      title: 'Emily',
      date: '1 Jan, 03.29 PM',
      amount: 500,
      card: '9223 3948 9340 1383',
      type: 'Bonus',
    ),
    TransactionModel(
      id: '7890123456',
      isIncome: true,
      title: 'Mark',
      date: '1 Jan, 03.29 PM',
      amount: 1000,
      card: '8223 3948 9340 1383',
      type: 'Transfer',
    ),
    TransactionModel(
      id: '8901234567',
      isIncome: false,
      title: 'William',
      date: '1 Jan, 10.40 PM',
      amount: -250,
      card: '7223 3948 9340 1383',
      type: 'Shopping',
    ),
    TransactionModel(
      id: '9012345678',
      isIncome: false,
      title: 'Olivia',
      date: '1 Jan, 10.40 PM',
      amount: -600,
      card: '6223 3948 9340 1383',
      type: 'Shopping',
    ),
    TransactionModel(
      id: '0123456789',
      isIncome: true,
      title: 'Sophia',
      date: '1 Jan, 03.29 PM',
      amount: 800,
      card: '5223 3948 9340 1383',
      type: 'Salary',
    ),
    TransactionModel(
      id: '1234567890',
      isIncome: true,
      title: 'Jacob',
      date: '1 Jan, 03.29 PM',
      amount: 1500,
      card: '4223 3948 9340 1383',
      type: 'Transfer',
    ),
    TransactionModel(
      id: '2345678901',
      isIncome: false,
      title: 'Mia',
      date: '1 Jan, 10.40 PM',
      amount: -900,
      card: '3223 3948 9340 1383',
      type: 'Shopping',
    ),
    TransactionModel(
      id: '3456789012',
      isIncome: false,
      title: 'Emma',
      date: '1 Jan, 10.40 PM',
      amount: -1200,
      card: '2223 3948 9340 1383',
      type: 'Shopping',
    ),
  ];

  // * ------ private methods -------*
  List<TransactionModel> get _tabTransactions {
    List<TransactionModel> filteredTransactions = [];
    if (tabIndex == 0) {
      filteredTransactions = _transactions;
    } else if (tabIndex == 1) {
      filteredTransactions =
          _transactions.where((element) => element.isIncome).toList();
    } else if (tabIndex == 2) {
      filteredTransactions =
          _transactions.where((element) => !element.isIncome).toList();
    }
    return filteredTransactions;
  }

  int get _transactionsLength => _tabTransactions.length; // 25
  int get _maxPages => (_transactionsLength / _transactionsPerPage).ceil(); // 5
  int get _maxPagesRange => (_maxPages / _pagesPerRange).ceil(); // 2

  //*------ public variables ------*
  int tabIndex = 0;
  int pageIndex = 0;
  int pagesRangeIndex = 0; // for page slider

  final List<String> tabsTitles = [
    'All Transactions',
    'Income',
    'Expense',
  ];

  //*------ public methods ------*
  bool get isPreviousButtonActive => pagesRangeIndex > 0;
  bool get isNextButtonActive => pagesRangeIndex < _maxPagesRange - 1;

  // first page in page slider
  int get startPage => pagesRangeIndex * _pagesPerRange;

  // last page in page slider
  int get lastPage => min(startPage + _pagesPerRange, _maxPages);

  List<TransactionModel> get pageTransactions {
    int length = _tabTransactions.length;
    int startIndex = pageIndex * _transactionsPerPage;
    int lastIndex = (pageIndex + 1) * _transactionsPerPage;

    return _tabTransactions
        .getRange(
          startIndex,
          min(lastIndex, length),
        )
        .toList();
  }

  void changeTabIndex(int index) {
    tabIndex = index;
    pageIndex = 0;
    pagesRangeIndex = 0;
    emit(TransactionsSuccessState());
  }

  void changePageIndex(int index) {
    int length = _tabTransactions.length;
    int maxPages = (length / _transactionsPerPage).ceil();
    if (index >= 0 && index <= maxPages) {
      pageIndex = index;
    }
    emit(TransactionsSuccessState());
  }

  void nextPages() {
    if (pagesRangeIndex < _maxPagesRange - 1) {
      pagesRangeIndex++;
      emit(TransactionsSuccessState());
    }
  }

  void previousPages() {
    if (pagesRangeIndex > 0) {
      pagesRangeIndex--;
      emit(TransactionsSuccessState());
    }
  }
}
