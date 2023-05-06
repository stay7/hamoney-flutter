part of 'add_spending_category_bloc.dart';

@immutable
abstract class AddSpendingCategoryState {}

class AddSpendingCategoryInitial extends AddSpendingCategoryState {
  AddSpendingCategoryInitial({required this.categories, required this.amount});

  final int amount;
  final List<Category> categories;
}
