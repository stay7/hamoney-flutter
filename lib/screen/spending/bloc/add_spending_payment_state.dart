part of 'add_spending_payment_bloc.dart';

@immutable
abstract class AddSpendingPaymentState {}

class AddSpendingPaymentInitial extends AddSpendingPaymentState {
  final List<Member> members;
  final List<AccountBookPay> sharedPayments;
  final SubCategory selectedCategory;

  AddSpendingPaymentInitial({
    required this.members,
    required this.sharedPayments,
    required this.selectedCategory,
  });
}
