import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:hamoney/repository/auth_repository.dart';
import 'package:hamoney/repository/user_repository.dart';
import 'package:hamoney/workflow/manage_auth_token.dart';
import 'package:meta/meta.dart';

import '../../model/oauth_token.dart';
import '../../model/user.dart';

part 'signup_event.dart';

part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc({
    required AuthRepository authRepository,
    required UserRepository userRepository,
    required ManageAuthToken manageAuthToken,
  })  : _authRepository = authRepository,
        _userRepository = userRepository,
        _manageAuthToken = manageAuthToken,
        super(SignupInitial()) {
    on<SignupRequested>(_onSignupRequested);
  }

  final AuthRepository _authRepository;
  final UserRepository _userRepository;
  final ManageAuthToken _manageAuthToken;

  FutureOr<void> _onSignupRequested(SignupRequested event, Emitter<SignupState> emit) async {
    final signupResult = await _authRepository.signup(event.email, event.nickname);
    final oauthToken = OAuthToken(
      accessToken: signupResult.accessToken,
      refreshToken: signupResult.accessToken,
    );

    _manageAuthToken.applyNewOAuthToken(oauthToken);
    _userRepository.user = User(
      id: signupResult.id,
      email: signupResult.email,
      nickname: signupResult.nickname,
      profile: "",
    );

    emit(SignupCompleted(
      email: _userRepository.user.email,
      nickname: _userRepository.user.nickname,
      id: _userRepository.user.id,
    ));
  }
}
