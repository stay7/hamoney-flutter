import 'dart:io';

import 'package:dio/dio.dart';
import 'package:hamoney/repository/client/auth_client.dart';
import 'package:hamoney/repository/client/hamoeny_status.dart';
import 'package:hamoney/secure_storage.dart';
import 'package:logger/logger.dart';

import 'CustomDioLogger.dart';

class DioUtil {
  static final DioUtil _instance = DioUtil._();
  final Logger logger = Logger();

  factory DioUtil() => _instance;

  DioUtil._() {
    initPureDio();
  }

  final Dio _pureDio = Dio(BaseOptions(connectTimeout: 5000));
  final Dio _authorizedDio = Dio(BaseOptions(connectTimeout: 5000));

  Dio get pureDio => _pureDio;

  Dio get authorizedDio => _authorizedDio;

  void initPureDio() {
    _pureDio.interceptors.add(CustomDioLogger('pureDio'));
  }

  void initAuthorizedDio() {
    _authorizedDio.interceptors.clear();
    _authorizedDio.interceptors.add(CustomDioLogger('authorizedDio'));
    // interceptor에는 하나의 request만 들어온다
    _authorizedDio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        final accessToken = await SecureStorage().storage.read(key: SecureStorageKey.accessToken);
        options.headers['Authorization'] = accessToken;
        handler.next(options);
      },
      onError: (error, handler) async {
        final response = error.response!;
        final options = error.response!.requestOptions;

        if (response.statusCode == HttpStatus.unauthorized &&
            response.data['status'] == HamoneyStatus.REQUIRED_REFRESH_TOKEN) {
          final refreshToken = await SecureStorage().storage.read(key: SecureStorageKey.refreshToken);
          await AuthClient(pureDio).refresh(refreshToken!).then((value) {
            SecureStorage().saveOAuthToken(value.data);
            DioUtil().initAuthorizedDio();
          });
          options.headers['Authorization'] = await SecureStorage().storage.read(key: SecureStorageKey.accessToken);
          _authorizedDio.fetch(options).then((value) => handler.resolve(value));
        }
      },
    ));
  }
}
