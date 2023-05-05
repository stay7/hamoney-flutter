import 'package:freezed_annotation/freezed_annotation.dart';

import 'category.dart';

part 'account_book.freezed.dart';

part 'account_book.g.dart';

@freezed
class AccountBook with _$AccountBook {

  @JsonSerializable(explicitToJson: true)
  const factory AccountBook({
    required int id,
    required String name,
    required List<Category> categories,
    required List<AccountBook> payments,
    required int createdAt,
  }) = _AccountBook;

  factory AccountBook.fromJson(Map<String, dynamic> json) => _$AccountBookFromJson(json);
}
