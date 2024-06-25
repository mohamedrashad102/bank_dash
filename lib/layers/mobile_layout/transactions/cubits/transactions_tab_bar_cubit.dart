import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/transaction_model.dart';

part 'transactions_tab_bar_cubit_state.dart';

class TransactionsTabBarCubit extends Cubit<TransactionsTabBarCubitState> {
  TransactionsTabBarCubit() : super(TransactionsInitialState());

  static TransactionsTabBarCubit get(context) => BlocProvider.of(context);

  // *------ private variables ------*
  final int _pagesPerRange = 4; // 4 pages in page slider
  final int _transactionsPerPage = 5; // 5 transactions per page

  final List<TransactionModel> _transactions = const [
    TransactionModel(
      title: 'Spotify Subscription',
      amount: -2500,
      isIncome: false,
      date: '28 Jan, 12.30 AM',
    ),
    TransactionModel(
      isIncome: false,
      title: 'Freepik Sales',
      date: '25 Jan, 10.40 PM',
      amount: 750,
    ),
    TransactionModel(
      isIncome: true,
      title: 'Mobile Service',
      date: '20 Jan, 10.40 PM',
      amount: -150,
    ),
    TransactionModel(
      isIncome: true,
      title: 'Wilson',
      date: '15 Jan, 03.29 PM',
      amount: -1050,
    ),
    TransactionModel(
      isIncome: false,
      title: 'Emilly',
      date: '14 Jan, 10.40 PM',
      amount: 840,
    ),
    TransactionModel(
      isIncome: false,
      title: 'John',
      date: '1 Jan, 10.40 PM',
      amount: -750,
    ),
    TransactionModel(
      isIncome: true,
      title: 'Emily',
      date: '1 Jan, 03.29 PM',
      amount: 500,
    ),
    TransactionModel(
      isIncome: true,
      title: 'Mark',
      date: '1 Jan, 03.29 PM',
      amount: 1000,
    ),
    TransactionModel(
      isIncome: false,
      title: 'William',
      date: '1 Jan, 10.40 PM',
      amount: -250,
    ),
    TransactionModel(
      isIncome: false,
      title: 'Olivia',
      date: '1 Jan, 10.40 PM',
      amount: -600,
    ),
    TransactionModel(
      isIncome: true,
      title: 'Sophia',
      date: '1 Jan, 03.29 PM',
      amount: 800,
    ),
    TransactionModel(
      isIncome: true,
      title: 'Jacob',
      date: '1 Jan, 03.29 PM',
      amount: 1500,
    ),
    TransactionModel(
      isIncome: false,
      title: 'Mia',
      date: '1 Jan, 10.40 PM',
      amount: -900,
    ),
    TransactionModel(
      isIncome: false,
      title: 'James',
      date: '1 Jan, 10.40 PM',
      amount: -1200,
    ),
    TransactionModel(
      title: 'Spotify Subscription',
      amount: -2500,
      isIncome: false,
      date: '28 Jan, 12.30 AM',
    ),
    TransactionModel(
      isIncome: false,
      title: 'Freepik Sales',
      date: '25 Jan, 10.40 PM',
      amount: 750,
    ),
    TransactionModel(
      isIncome: true,
      title: 'Mobile Service',
      date: '20 Jan, 10.40 PM',
      amount: -150,
    ),
    TransactionModel(
      isIncome: true,
      title: 'Wilson',
      date: '15 Jan, 03.29 PM',
      amount: -1050,
    ),
    TransactionModel(
      isIncome: false,
      title: 'Emilly',
      date: '14 Jan, 10.40 PM',
      amount: 840,
    ),
    TransactionModel(
      isIncome: false,
      title: 'John',
      date: '1 Jan, 10.40 PM',
      amount: -750,
    ),
    TransactionModel(
      isIncome: true,
      title: 'Emily',
      date: '1 Jan, 03.29 PM',
      amount: 500,
    ),
    TransactionModel(
      isIncome: true,
      title: 'Mark',
      date: '1 Jan, 03.29 PM',
      amount: 1000,
    ),
    TransactionModel(
      isIncome: false,
      title: 'William',
      date: '1 Jan, 10.40 PM',
      amount: -250,
    ),
    TransactionModel(
      isIncome: false,
      title: 'Olivia',
      date: '1 Jan, 10.40 PM',
      amount: -600,
    ),
    TransactionModel(
      isIncome: true,
      title: 'Sophia',
      date: '1 Jan, 03.29 PM',
      amount: 800,
    ),
    TransactionModel(
      isIncome: true,
      title: 'Jacob',
      date: '1 Jan, 03.29 PM',
      amount: 1500,
    ),
    TransactionModel(
      isIncome: false,
      title: 'Mia',
      date: '1 Jan, 10.40 PM',
      amount: -900,
    ),
    TransactionModel(
      isIncome: false,
      title: 'James',
      date: '1 Jan, 10.40 PM',
      amount: -1200,
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
