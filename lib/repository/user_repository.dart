import 'package:logging/logging.dart';

import '../model/user.dart';

class UserRepository {
  UserRepository();

  late User _user;
  Logger logger = Logger('UserRepository');

  set setUser(User value) => _user = value;

  User get getUser => _user;
}
