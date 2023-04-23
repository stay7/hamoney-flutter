import 'package:logger/logger.dart';

import '../model/user.dart';

class UserRepository {
  UserRepository();

  late User _user;
  Logger logger = Logger();

  set setUser(User value) => _user = value;

  User get getUser => _user;
}
