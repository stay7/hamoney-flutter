import 'package:hamoney/model/oauth_token.dart';
import 'package:hamoney/secure_storage.dart';

import '../dio/auth_dio.dart';

class ManageAuthToken {
  final SecureStorage _secureStorage;
  final AuthDio _authDio;

  ManageAuthToken({required SecureStorage secureStorage, required AuthDio authDio})
      : _secureStorage = secureStorage,
        _authDio = authDio;

  Future<bool> checkOAuthTokenExist() async {
    return _secureStorage.containOAuthToken();
  }

  void applyNewOAuthToken(OAuthToken oAuthToken) {
    _authDio.initialize(oAuthToken);
    _secureStorage.saveOAuthToken(oAuthToken);
  }

  void loadOAuthToken() async {
    final oAuthToken = await _secureStorage.loadOAuthToken();
    if (oAuthToken != null) {
      _authDio.initialize(oAuthToken);
    }
  }
}
