part of 'add_spending_category_bloc.dart';

@immutable
abstract class AddSpendingCategoryState {}

class AddSpendingCategoryInitial extends AddSpendingCategoryState {
  AddSpendingCategoryInitial({required this.categories, required this.amount});

  List<Category> categories;
  int amount;
}

class SelectingCategory extends AddSpendingCategoryState {
  SelectingCategory(this.selectedCategory);

  SubCategory selectedCategory;
}
