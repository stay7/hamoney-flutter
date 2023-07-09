import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import '../model/spending.dart';

class SpendingDataSource {
  static const String databasePath = 'spending.db';
  static const String tableName = 'spending';
  static const String id = 'id';
  static const String spendAt = 'spend_at';
  static const String amount = 'amount';
  static const String categoryId = 'category_id';
  static const String subCategoryId = 'sub_category_id';
  static const String paymentId = 'paymentId';
  static const String skipSum = 'skip_sum';
  static const String memo = 'memo';

  Database? _db;

  Future<Database> initDB() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, databasePath);
    _db = await openDatabase(path, version: 1, onCreate: _createDB);
    return _db!;
  }

  Future _createDB(Database db, int version) async {
    await db.execute('''
    CREATE TABLE $tableName (
      $id integer primary key,
      $spendAt text not null,
      $amount int not null,
      $categoryId int not null,
      $subCategoryId int not null,
      $paymentId int not null,
      $skipSum boolean not null,
      $memo text)
    ''');

    await db.execute('CREATE INDEX idx_spend_at ON $tableName ($spendAt);');
  }

  Future<Spending?> select(int targetId) async {
    List<Map> maps = await _db!.query(tableName, where: '$id = ?', whereArgs: [targetId]);
    if (maps.length > 0) {
      return fromMap(maps.first);
    }
    return null;
  }

  Future<void> insert(Spending spending) async {
    _db!.insert(tableName, toMap(spending));
  }

  Future<int> deleteById(int id) async {
    return await _db!.delete(tableName, where: '$id = ?', whereArgs: [id]);
  }

  Future<int> update(Spending spending) async {
    return await _db!.update(tableName, toMap(spending), where: '$id = ?', whereArgs: [spending.id]);
  }

  Future close() async => _db!.close();

  Spending fromMap(Map<dynamic, dynamic> map) {
    return Spending(
        id: map[id],
        spendAt: map[spendAt],
        amount: map[amount],
        categoryId: map[categoryId],
        subCategoryId: map[subCategoryId],
        paymentId: map[paymentId],
        skipSum: map[skipSum] == 1,
        memo: map[memo]);
  }

  Map<String, Object?> toMap(Spending spending) {
    return {
      id: spending.id,
      spendAt: spending.spendAt,
      amount: spending.amount,
      categoryId: spending.categoryId,
      subCategoryId: spending.subCategoryId,
      paymentId: spending.paymentId,
      skipSum: spending.skipSum == true ? 1 : 0,
      memo: spending.memo
    };
  }
}
