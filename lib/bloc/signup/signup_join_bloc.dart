import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:hamoney/repository/account_book_repository.dart';
import 'package:meta/meta.dart';

part 'signup_join_event.dart';

part 'signup_join_state.dart';

class SignupJoinBloc extends Bloc<SignupJoinEvent, SignupJoinState> {
  SignupJoinBloc({required this.accountBookRepository}) : super(SignupJoinInitial()) {
    on<SignupJoinEvent>((event, emit) {});
    on<UseAloneClicked>(_onUseAloneClicked);
    on<UseTogetherClicked>(_onUseTogetherClicked);
  }

  final AccountBookRepository accountBookRepository;

  FutureOr<void> _onUseAloneClicked(UseAloneClicked event, Emitter<SignupJoinState> emit) async {
    final result = await accountBookRepository.useAlone();
    await accountBookRepository.fetchAccountBook(result.accountBookId);
    await accountBookRepository.fetchMembers(result.accountBookId);
    accountBookRepository.selectAccountBook(result.accountBookId);
    emit(AccountBookCreated(code: result.invitationCode));
  }

  FutureOr<void> _onUseTogetherClicked(UseTogetherClicked event, Emitter<SignupJoinState> emit) async {
    final result = await accountBookRepository.useTogether(event.invitationCode);
    await accountBookRepository.fetchAccountBook(result.accountBookId);
    await accountBookRepository.fetchMembers(result.accountBookId);
    accountBookRepository.selectAccountBook(result.accountBookId);
    emit(AccountBookLinked());
  }
}
