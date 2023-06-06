import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hamoney/db/hive_type_id.dart';
import 'package:hive/hive.dart';

import 'account_book_pay.dart';
import 'category.dart';

part 'account_book.freezed.dart';

part 'account_book.g.dart';

@freezed
class AccountBook with _$AccountBook {

  @HiveType(typeId: HiveTypeId.accountBook)
  @JsonSerializable(explicitToJson: true)
  const factory AccountBook({
    @HiveField(0) required int id,
    @HiveField(1) required String name,
    @HiveField(2) required List<Category> categories,
    @HiveField(3) required List<AccountBookPay> payments,
    @HiveField(4) required int createdAt,
  }) = _AccountBook;

  factory AccountBook.fromJson(Map<String, dynamic> json) => _$AccountBookFromJson(json);
}
