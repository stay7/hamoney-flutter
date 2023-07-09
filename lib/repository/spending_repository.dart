import 'package:hamoney/model/sub_category.dart';

import '../db/spending_datasource.dart';
import '../model/spending.dart';

class SpendingRepository {
  final SpendingDataSource _dataSource;

  SpendingRepository({required SpendingDataSource dataSource}) : _dataSource = dataSource;

  DateTime? selectedDateTime;
  SubCategory? selectedSubCategory;
  int amount = 0;

  Future<Spending?> find(int id) async {
    return await _dataSource.select(id);
  }

  Future<void> save(Spending spending) async {
    await _dataSource.insert(spending);
  }

  Future<void> remove(Spending spending) async {
    await _dataSource.deleteById(spending.id);
  }

  Future<void> update(Spending spending) async {
    await _dataSource.update(spending);
  }
}
