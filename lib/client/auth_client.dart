import 'package:dio/dio.dart';
import 'package:hamoney/hamoney_config.dart';
import 'package:hamoney/model/oauth_token.dart';
import 'package:retrofit/retrofit.dart';

import '../base_response.dart';
import '../model/oauth_request.dart';
import '../model/signup_request.dart';
import '../model/signup_response.dart';

part 'auth_client.g.dart';

@RestApi(baseUrl: HamoneyConfig.baseUrl)
abstract class AuthClient {
  factory AuthClient(Dio dio, {String? baseUrl}) = _AuthClient;

  @POST('/signup')
  Future<HttpResponse<BaseResponse<SignupResponse>>> signup(@Body() SignupRequest signupRequest);

  @POST('/oauth/issue')
  Future<HttpResponse<BaseResponse<OAuthToken>>> issueToken(@Body() OAuthRequest oAuthRequest);
}
