import 'package:dio/dio.dart';
import 'package:hamoney/model/oauth_token.dart';
import 'package:hamoney/client/request/oauth_request.dart';
import 'package:retrofit/retrofit.dart';

import 'request/signup_request.dart';
import 'response/signup_response.dart';

part 'auth_client.g.dart';

@RestApi()
abstract class AuthClient {
  factory AuthClient(Dio dio, {String? baseUrl}) = _AuthClient;

  @POST('/signup')
  Future<HttpResponse<SignupResponse>> signup(@Body() SignupRequest signupRequest);

  @POST('/oauth/issue')
  Future<HttpResponse<OAuthToken>> issueToken(@Body() OAuthRequest oAuthRequest);

  @GET('/oauth/refresh')
  Future<HttpResponse<OAuthToken>> refresh(@Query('refresh_token') String refreshToken);
}
