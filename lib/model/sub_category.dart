import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sub_category.freezed.dart';

part 'sub_category.g.dart';

@freezed
class SubCategory with _$SubCategory {
  const factory SubCategory({required int id, required int iconId, required String name}) = _SubCategory;

  factory SubCategory.fromJson(Map<String, dynamic> json) => _$SubCategoryFromJson(json);
}
