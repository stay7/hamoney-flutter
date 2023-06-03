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
    await accountBookRepository.useAlone();
    emit(AccountBookCreated());
  }

  FutureOr<void> _onUseTogetherClicked(UseTogetherClicked event, Emitter<SignupJoinState> emit) async {
    await accountBookRepository.useTogether(event.invitationCode);
    emit(AccountBookLinked());
  }
}
