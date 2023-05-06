import 'package:bloc/bloc.dart';
import 'package:hamoney/repository/spending_repository.dart';
import 'package:meta/meta.dart';

part 'add_spending_payment_event.dart';

part 'add_spending_payment_state.dart';

class AddSpendingPaymentBloc extends Bloc<AddSpendingPaymentEvent, AddSpendingPaymentState> {
  AddSpendingPaymentBloc({required this.spendingRepository}) : super(AddSpendingPaymentInitial()) {
    on<AddSpendingPaymentEvent>((event, emit) {});
  }

  final SpendingRepository spendingRepository;
}
