import 'package:dio/dio.dart';
import 'package:logging/logging.dart';

import 'CustomDioLogger.dart';

class DioUtil {
  static final DioUtil _instance = DioUtil._();

  factory DioUtil() => _instance;

  DioUtil._() {
    initPureDio();
    initAuthenticatedDio();
  }

  Logger dioLogger = Logger('pureDio');
  late Dio _pureDio;
  late Dio _authenticatedDio;

  Dio get pureDio => _pureDio;

  Dio get authenticatedDio => _authenticatedDio;

  void initPureDio() {
    final dio = Dio(
      BaseOptions(
        connectTimeout: 5000,
      ),
    );

    dio.interceptors.add(CustomDioLogger('pureDio'));
    _pureDio = dio;
  }

  void initAuthenticatedDio() {
    final dio = Dio(
      BaseOptions(
        connectTimeout: 5000,
      ),
    );

    dio.interceptors.add(CustomDioLogger('authenticatedDio'));
    _authenticatedDio = dio;
  }
}
