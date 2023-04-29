import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'saving_event.dart';

part 'saving_state.dart';

class SavingBloc extends Bloc<SavingEvent, SavingState> {
  SavingBloc() : super(SavingInitial()) {
    on<SavingEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
