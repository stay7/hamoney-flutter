import 'package:logger/logger.dart';

import '../db/user_hive.dart';
import '../model/user.dart';

class UserRepository {
  final UserHive _userHive;

  UserRepository({
    required UserHive userHive,
  }) : _userHive = userHive;

  Logger logger = Logger();

  late User user;

  User? loadUser() {
    user = _userHive.findMe()!;
    return user;
  }

  Future<void> saveUser(User user) async {
    await _userHive.save(user);
  }

  User? findUser() {
    return _userHive.findMe();
  }
}
