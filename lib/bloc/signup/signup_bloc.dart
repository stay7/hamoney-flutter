import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:hamoney/repository/auth_repository.dart';
import 'package:hamoney/repository/user_repository.dart';
import 'package:meta/meta.dart';

part 'signup_event.dart';

part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc({required this.authRepository, required this.userRepository}) : super(SignupInitial()) {
    print('SignupBloc created');
    on<SignupRequested>(_onSignupRequested);
    on<OAuthTokenRequested>(_onOAuthTokenRequested);
  }

  final AuthRepository authRepository;
  final UserRepository userRepository;

  FutureOr<void> _onSignupRequested(SignupRequested event, Emitter<SignupState> emit) async {
    final user = await authRepository.signup(event.email, event.nickname);
    userRepository.setUser = user;
  }

  FutureOr<void> _onOAuthTokenRequested(OAuthTokenRequested event, Emitter<SignupState> emit) async {
    print('request issueToken ${event.email}');
    await authRepository.issueToken(event.email);
  }
}
