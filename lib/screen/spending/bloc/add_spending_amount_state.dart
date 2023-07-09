part of 'add_spending_amount_bloc.dart';

@immutable
abstract class AddSpendingAmountState {}

class AddSpendingAmountInitial extends AddSpendingAmountState {
  AddSpendingAmountInitial();
}

class SpendingAmountEntered extends AddSpendingAmountState {}

class DateChanged extends AddSpendingAmountState {}
