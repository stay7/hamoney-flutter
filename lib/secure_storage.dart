import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hamoney/model/oauth_token.dart';

class SecureStorage {
  SecureStorage._internal() {
    storage = const FlutterSecureStorage(aOptions: AndroidOptions(encryptedSharedPreferences: true));
  }

  static final SecureStorage _singleton = SecureStorage._internal();

  factory SecureStorage() {
    return _singleton;
  }

  late final FlutterSecureStorage storage;

  Future<OAuthToken?> loadOAuthToken() async {
    final accessToken = await storage.read(key: SecureStorageKey.accessToken);
    final refreshToken = await storage.read(key: SecureStorageKey.refreshToken);

    if (accessToken == null || refreshToken == null) return null;
    return OAuthToken(accessToken: accessToken, refreshToken: refreshToken);
  }

  Future<void> saveOAuthToken(OAuthToken oAuthToken) async {
    storage.write(key: SecureStorageKey.accessToken, value: oAuthToken.accessToken);
    storage.write(key: SecureStorageKey.refreshToken, value: oAuthToken.refreshToken);
  }

  Future<bool> containOAuthToken() async {
    final accessToken = await storage.read(key: SecureStorageKey.accessToken);
    final refreshToken = await storage.read(key: SecureStorageKey.refreshToken);

    return accessToken != null && refreshToken != null;
  }

  Future<int?> lastUsedAccountBookId() async {
    final lastUsedAccountBookId = await storage.read(key: SecureStorageKey.lastUsedAccountBookId);
    if (lastUsedAccountBookId == null) return null;

    return int.parse(lastUsedAccountBookId);
  }

  Future<void> saveLastUsedAccountBookId(int accountBookId) async {
    storage.write(key: SecureStorageKey.lastUsedAccountBookId, value: accountBookId.toString());
  }
}

abstract class SecureStorageKey {
  static const String email = "email";
  static const String token = "token";
  static const String accessToken = "accessToken";
  static const String refreshToken = "refreshToken";
  static const String lastUsedAccountBookId = "lastUsedAccountBookId";
}
