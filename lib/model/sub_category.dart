import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hamoney/db/hive_type_id.dart';
import 'package:hive/hive.dart';

part 'sub_category.freezed.dart';

part 'sub_category.g.dart';

@freezed
class SubCategory with _$SubCategory {
  @HiveType(typeId: HiveTypeId.subCategory)
  const factory SubCategory({
    @HiveField(0) required int id,
    @HiveField(1) required int iconId,
    @HiveField(2) required String name,
  }) = _SubCategory;

  factory SubCategory.fromJson(Map<String, dynamic> json) => _$SubCategoryFromJson(json);
}
