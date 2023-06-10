import 'package:hamoney/dio/dioUtil.dart';
import 'package:hamoney/model/oauth_token.dart';
import 'package:hamoney/secure_storage.dart';

class ManageAuthToken {
  final SecureStorage secureStorage;

  ManageAuthToken({required this.secureStorage});

  Future<bool> checkOAuthTokenExist() async {
    return secureStorage.containOAuthToken();
  }

  void applyNewOAuthToken(OAuthToken oAuthToken) {
    secureStorage.saveOAuthToken(oAuthToken);
    DioUtil().initAuthorizedDio(oAuthToken);
  }

  void initializeOAuthToken() async {
    final oAuthToken = await secureStorage.loadOAuthToken();
    if (oAuthToken != null) {
      DioUtil().initAuthorizedDio(oAuthToken);
    }
  }
}
