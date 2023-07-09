import 'package:bloc/bloc.dart';
import 'package:hamoney/repository/ui_repository.dart';
import 'package:hamoney/repository/spending_repository.dart';
import 'package:meta/meta.dart';

part 'add_spending_amount_event.dart';

part 'add_spending_amount_state.dart';

class AddSpendingAmountBloc extends Bloc<AddSpendingAmountEvent, AddSpendingAmountState> {
  AddSpendingAmountBloc({
    required this.uiRepository,
    required this.spendingRepository,
  }) : super(AddSpendingAmountInitial()) {
    spendingRepository.selectedDateTime = uiRepository.selectedDate;

    on<AmountEntered>(_onAmountEntered);
    on<DateChanging>(_onDateChanged);
  }

  final UIRepository uiRepository;
  final SpendingRepository spendingRepository;

  void _onAmountEntered(AmountEntered event, Emitter<AddSpendingAmountState> emit) {
    spendingRepository.amount = event.amount;
    emit(SpendingAmountEntered());
  }

  void _onDateChanged(DateChanging event, Emitter<AddSpendingAmountState> emit) {
    spendingRepository.selectedDateTime = event.selectedDateTime;
    emit(DateChanged());
  }

  DateTime get selectedDate {
    spendingRepository.selectedDateTime ??= uiRepository.selectedDate;
    return spendingRepository.selectedDateTime!;
  }
}
