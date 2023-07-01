import 'package:dio/dio.dart';
import 'package:hamoney/client/auth_client.dart';
import 'package:hamoney/model/oauth_token.dart';

class AuthDio {
  AuthDio({required String baseUrl, required AuthClient authClient}) : _authClient = authClient {
    dio = Dio(BaseOptions(baseUrl: baseUrl));
  }

  late Dio dio;

  final AuthClient _authClient;
  late OAuthToken oAuthToken;

  Dio initialize(OAuthToken oAuthToken) {
    this.oAuthToken = oAuthToken;

    dio.interceptors.clear();
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: _onRequest,
      onError: _onError,
    ));
    return dio;
  }

  void _onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers['Authorization'] = oAuthToken.accessToken;
    handler.next(options);
  }

  void _onError(DioError error, ErrorInterceptorHandler handler) async {
    final response = error.response!;
    final failedOptions = error.response!.requestOptions;

    if (response.data['status'] == 1000) {
      final refreshResponse = await _authClient.refresh(oAuthToken.refreshToken);
      oAuthToken = refreshResponse.data;
    }

    failedOptions.headers['Authorization'] = oAuthToken.accessToken;
    dio.fetch(failedOptions).then((value) => handler.resolve(value));
  }
}