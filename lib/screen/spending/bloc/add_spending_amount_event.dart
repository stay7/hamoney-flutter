part of 'add_spending_amount_bloc.dart';

@immutable
abstract class AddSpendingAmountEvent {}

class AmountEntered extends AddSpendingAmountEvent {
  final int amount;

  AmountEntered(this.amount);
}

class DateChanging extends AddSpendingAmountEvent {
  final DateTime selectedDateTime;

  DateChanging(this.selectedDateTime);
}
