import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  SecureStorage._internal() {
    storage = const FlutterSecureStorage(aOptions: AndroidOptions(encryptedSharedPreferences: true));
  }

  static final SecureStorage _singleton = SecureStorage._internal();

  factory SecureStorage() {
    return _singleton;
  }

  late final FlutterSecureStorage storage;
}

class SecureStorageKey {
  static const String email = "email";
  static const String token = "token";
  static const String accessToken = "accessToken";
  static const String refreshToken = "refreshToken";
}
