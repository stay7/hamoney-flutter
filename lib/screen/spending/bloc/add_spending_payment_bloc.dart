import 'package:bloc/bloc.dart';
import 'package:hamoney/repository/account_book_repository.dart';
import 'package:hamoney/repository/spending_repository.dart';
import 'package:meta/meta.dart';

import '../../../model/account_book_pay.dart';
import '../../../model/member.dart';
import '../../../repository/member_repository.dart';

part 'add_spending_payment_event.dart';

part 'add_spending_payment_state.dart';

class AddSpendingPaymentBloc extends Bloc<AddSpendingPaymentEvent, AddSpendingPaymentState> {
  final SpendingRepository _spendingRepository;
  final AccountBookRepository _accountBookRepository;
  final MemberRepository _memberRepository;

  AddSpendingPaymentBloc({
    required SpendingRepository spendingRepository,
    required AccountBookRepository accountBookRepository,
    required MemberRepository memberRepository,
  })  : _spendingRepository = spendingRepository,
        _accountBookRepository = accountBookRepository,
        _memberRepository = memberRepository,
        super(AddSpendingPaymentInitial(
          members: memberRepository.members,
          sharedPayments: accountBookRepository.accountBook.payments,
        )) {
    on<AddSpendingPaymentEvent>((event, emit) {});
  }
}
