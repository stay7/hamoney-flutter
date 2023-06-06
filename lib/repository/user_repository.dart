import 'package:logger/logger.dart';

import '../model/user.dart';

class UserRepository {
  UserRepository();

  Logger logger = Logger();

  late User _user;

  User get user => _user;

  set user(User value) {
    _user = value;
  }
}
