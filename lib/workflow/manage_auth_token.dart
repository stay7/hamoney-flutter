import 'package:hamoney/dio/dioUtil.dart';
import 'package:hamoney/model/oauth_token.dart';
import 'package:hamoney/secure_storage.dart';

class ManageAuthToken {
  final SecureStorage secureStorage;

  ManageAuthToken(this.secureStorage);

  void applyNewOAuthToken(OAuthToken oAuthToken) {
    secureStorage.saveOAuthToken(oAuthToken);
    DioUtil().initAuthorizedDio();
  }

  Future<bool> checkOAuthTokenExist() async {
    return await SecureStorage().storage.containsKey(key: SecureStorageKey.accessToken) &&
        await SecureStorage().storage.containsKey(key: SecureStorageKey.refreshToken);
  }

  // TODO: initAuthorizedDio가 parameter로 토큰 받도록하자
  void initializeOAuthToken() {
    DioUtil().initAuthorizedDio();
  }
}
