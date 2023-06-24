import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'signup_done_event.dart';

part 'signup_done_state.dart';

class SignupDoneBloc extends Bloc<SignupDoneEvent, SignupDoneState> {
  SignupDoneBloc() : super(SignupDoneInitial()) {
    on<SignupDoneEvent>((event, emit) {});
  }
}
