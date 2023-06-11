import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hamoney/db/hive_type_id.dart';
import 'package:hive/hive.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@freezed
@HiveType(typeId: HiveTypeId.user)
class User with _$User {
  const factory User({
    @HiveField(0) required int id,
    @HiveField(1) required String email,
    @HiveField(2) required String nickname,
    @HiveField(3) String? profile,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
