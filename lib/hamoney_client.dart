import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class HamoneyClient {
  static final _instance = HamoneyClient._constructor();

  late final Dio dio;

  HamoneyClient._constructor() {
    final config = BaseOptions(
      baseUrl: dotenv.env["BASE_URL"]!,
      connectTimeout: const Duration(seconds: 3).inMilliseconds,
      receiveTimeout: const Duration(seconds: 3).inMilliseconds,
    );
    dio = Dio(config);
  }

  factory HamoneyClient() {
    return _instance;
  }
}
