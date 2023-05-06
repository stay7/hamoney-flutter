import 'package:bloc/bloc.dart';
import 'package:hamoney/repository/account_book_repository.dart';
import 'package:hamoney/repository/spending_repository.dart';
import 'package:meta/meta.dart';

import '../../../model/category.dart';

part 'add_spending_category_event.dart';

part 'add_spending_category_state.dart';

class AddSpendingCategoryBloc extends Bloc<AddSpendingCategoryEvent, AddSpendingCategoryState> {
  AddSpendingCategoryBloc({
    required this.accountBookRepository,
    required this.spendingRepository,
  }) : super(AddSpendingCategoryInitial(
          categories: accountBookRepository.accountBook.categories,
          amount: spendingRepository.amount,
        )) {
    on<AddSpendingCategoryEvent>((event, emit) {});
  }

  final SpendingRepository spendingRepository;
  final AccountBookRepository accountBookRepository;
}
