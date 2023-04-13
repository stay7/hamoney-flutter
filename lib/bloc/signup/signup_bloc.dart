import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:hamoney/repository/signup_repository.dart';
import 'package:meta/meta.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc({required this.authRepository}) : super(SignupInitial()) {
    on<SignupRequested>(_onSignupRequested);
    on<OAuthTokenRequested>(_onOAuthTokenRequested);
  }

  final AuthRepository authRepository;

  FutureOr<void> _onSignupRequested(SignupRequested event, Emitter<SignupState> emit) async {
    final user = await authRepository.signup(event.email, event.nickname);
    //TODO userRepository에 user 등록
  }

  FutureOr<void> _onOAuthTokenRequested(OAuthTokenRequested event, Emitter<SignupState> emit) async {
    await authRepository.issueToken(event.email);
  }
}
