import 'package:hamoney/model/user.dart';
import 'package:hive_flutter/hive_flutter.dart';

class UserHive {
  static const String userKey = "user";
  static const String meKey = "me";

  UserHive();

  late Box<User> userBox;

  Future<void> initialize() async {
    Hive.registerAdapter<User>(UserAdapter());

    userBox = await Hive.openBox<User>(userKey);
  }

  Future<void> save(User user) async {
    await userBox.put(meKey, user);
  }

  User? findMe() {
    return userBox.get(meKey);
  }
}
