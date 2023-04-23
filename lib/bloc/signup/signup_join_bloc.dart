import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:hamoney/repository/account_book_repository.dart';
import 'package:meta/meta.dart';

part 'signup_join_event.dart';

part 'signup_join_state.dart';

class SignupJoinBloc extends Bloc<SignupJoinEvent, SignupJoinState> {
  SignupJoinBloc({required this.accountBookRepository}) : super(SignupJoinInitial()) {
    on<SignupJoinEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<UseAloneClicked>(_onUseAloneClicked);
    on<UseTogetherClicked>(_onUseTogetherClicked);
  }

  final AccountBookRepository accountBookRepository;

  FutureOr<void> _onUseAloneClicked(UseAloneClicked event, Emitter<SignupJoinState> emitter) async {
    await this.accountBookRepository.useAlone();
    emit(AccountBookSynced());
  }

  FutureOr<void> _onUseTogetherClicked(UseTogetherClicked event, Emitter<SignupJoinState> emitter) async {
    emit(AccountBookSynced());
  }
}
