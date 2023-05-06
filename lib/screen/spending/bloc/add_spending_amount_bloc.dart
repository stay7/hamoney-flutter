import 'package:bloc/bloc.dart';
import 'package:hamoney/repository/ui_repository.dart';
import 'package:hamoney/repository/spending_repository.dart';
import 'package:meta/meta.dart';

part 'add_spending_amount_event.dart';

part 'add_spending_amount_state.dart';

class AddSpendingAmountBloc extends Bloc<AddSpendingAmountEvent, AddSpendingAmountState> {
  AddSpendingAmountBloc({
    required this.dateRepository,
    required this.spendingRepository,
  }) : super(AddSpendingAmountInitial(selectedDate: dateRepository.selectedDate)) {
    on<AmountEntered>(_onAmountEntered);
  }

  final UIRepository dateRepository;
  final SpendingRepository spendingRepository;

  void _onAmountEntered(AmountEntered event, Emitter<AddSpendingAmountState> emit) {
    spendingRepository.amount = event.amount;
    emit(SpendingAmountEntered());
  }
}
