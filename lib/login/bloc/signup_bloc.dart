import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'signup_event.dart';

part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc() : super(SignupInitial()) {
    on<SignupRequested>(_onSignupRequested);
  }

  FutureOr<void> _onSignupRequested(SignupRequested event, Emitter<SignupState> emit) async {
    
  }
}
