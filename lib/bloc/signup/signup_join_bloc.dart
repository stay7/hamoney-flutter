import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:hamoney/client/request/use_together_request.dart';
import 'package:hamoney/client/signup_client.dart';
import 'package:hamoney/repository/account_book_repository.dart';
import 'package:logger/logger.dart';
import 'package:meta/meta.dart';

part 'signup_join_event.dart';

part 'signup_join_state.dart';

class SignupJoinBloc extends Bloc<SignupJoinEvent, SignupJoinState> {
  final AccountBookRepository _accountBookRepository;
  final SignupClient _signupClient;

  SignupJoinBloc({
    required AccountBookRepository accountBookRepository,
    required SignupClient signupClient,
  })  : _accountBookRepository = accountBookRepository,
        _signupClient = signupClient,
        super(SignupJoinInitial()) {
    on<SignupJoinEvent>((event, emit) {});
    on<UseAloneClicked>(_onUseAloneClicked);
    on<UseTogetherClicked>(_onUseTogetherClicked);
  }

  final Logger logger = Logger();

  FutureOr<void> _onUseAloneClicked(UseAloneClicked event, Emitter<SignupJoinState> emit) async {
    final result = await _signupClient.useAlone();
    emit(AccountBookCreated(code: result.data.invitationCode));
  }

  FutureOr<void> _onUseTogetherClicked(UseTogetherClicked event, Emitter<SignupJoinState> emit) async {
    await _signupClient.useTogether(UseTogetherRequest(invitationCode: event.invitationCode));
    emit(AccountBookLinked());
  }
}
