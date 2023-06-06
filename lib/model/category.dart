import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hamoney/db/hive_type_id.dart';
import 'package:hamoney/model/sub_category.dart';
import 'package:hive/hive.dart';

part 'category.freezed.dart';

part 'category.g.dart';

@freezed
class Category with _$Category {
  @HiveType(typeId: HiveTypeId.category)
  @JsonSerializable(explicitToJson: true)
  const factory Category({
    @HiveField(0) required int id,
    @HiveField(1) required String name,
    @HiveField(2) required List<SubCategory> subCategories,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}
