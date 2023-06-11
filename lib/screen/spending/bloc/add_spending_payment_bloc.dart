import 'package:bloc/bloc.dart';
import 'package:hamoney/repository/account_book_repository.dart';
import 'package:hamoney/repository/spending_repository.dart';
import 'package:meta/meta.dart';

import '../../../model/account_book_pay.dart';
import '../../../model/member.dart';

part 'add_spending_payment_event.dart';

part 'add_spending_payment_state.dart';

class AddSpendingPaymentBloc extends Bloc<AddSpendingPaymentEvent, AddSpendingPaymentState> {
  AddSpendingPaymentBloc({required this.spendingRepository, required this.accountBookRepository})
      : super(AddSpendingPaymentInitial(
          members: accountBookRepository.curAccountBookMember.members,
          sharedPayments: accountBookRepository.curAccountBookMember.accountBook.payments,
        )) {
    on<AddSpendingPaymentEvent>((event, emit) {});
  }

  final AccountBookRepository accountBookRepository;
  final SpendingRepository spendingRepository;
}
