import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:hamoney/repository/account_book_repository.dart';
import 'package:hamoney/workflow/select_account_book_member.dart';
import 'package:meta/meta.dart';

part 'signup_join_event.dart';

part 'signup_join_state.dart';

class SignupJoinBloc extends Bloc<SignupJoinEvent, SignupJoinState> {
  SignupJoinBloc({
    required AccountBookRepository accountBookRepository,
    required SelectAccountBookMember selectAccountBookMember,
  })  : _accountBookRepository = accountBookRepository,
        _selectAccountBookMember = selectAccountBookMember,
        super(SignupJoinInitial()) {
    on<SignupJoinEvent>((event, emit) {});
    on<UseAloneClicked>(_onUseAloneClicked);
    on<UseTogetherClicked>(_onUseTogetherClicked);
  }

  final AccountBookRepository _accountBookRepository;
  final SelectAccountBookMember _selectAccountBookMember;

  FutureOr<void> _onUseAloneClicked(UseAloneClicked event, Emitter<SignupJoinState> emit) async {
    final result = await _accountBookRepository.useAlone();
    Future.wait([
      _accountBookRepository.fetchAccountBook(result.accountBookId),
      _accountBookRepository.fetchMembers(result.accountBookId)
    ]);

    await _selectAccountBookMember.invoke(result.accountBookId);
    emit(AccountBookCreated(code: result.invitationCode));
  }

  FutureOr<void> _onUseTogetherClicked(UseTogetherClicked event, Emitter<SignupJoinState> emit) async {
    final result = await _accountBookRepository.useTogether(event.invitationCode);
    Future.wait([
      _accountBookRepository.fetchAccountBook(result.accountBookId),
      _accountBookRepository.fetchMembers(result.accountBookId)
    ]);

    await _selectAccountBookMember.invoke(result.accountBookId);
    emit(AccountBookLinked());
  }
}
