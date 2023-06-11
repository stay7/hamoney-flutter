import 'package:logger/logger.dart';

import '../db/user_hive.dart';
import '../model/user.dart';

class UserRepository {
  UserRepository({
    required UserHive userHive,
  }) : _userHive = userHive;

  final UserHive _userHive;

  Logger logger = Logger();

  late User _user;

  Future<void> load() async {
    final me = _userHive.findMe();
    if (me != null) {
      _user = me;
    }
  }

  User get user => _user;

  set user(User value) {
    _user = value;
  }
}
