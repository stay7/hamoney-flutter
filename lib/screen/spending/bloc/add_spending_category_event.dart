part of 'add_spending_category_bloc.dart';

@immutable
abstract class AddSpendingCategoryEvent {}

class CategorySelect extends AddSpendingCategoryEvent {
  CategorySelect(this.category);

  final SubCategory category;
}
