part of 'add_spending_amount_bloc.dart';

@immutable
abstract class AddSpendingAmountState {}

class AddSpendingAmountInitial extends AddSpendingAmountState {
  AddSpendingAmountInitial({required this.selectedDate});

  final DateTime selectedDate;
}

class SpendingAmountEntered extends AddSpendingAmountState {}
