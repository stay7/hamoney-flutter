import 'package:dio/dio.dart';
import 'package:hamoney/client/request/use_together_request.dart';
import 'package:hamoney/client/response/use_together_response.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/http.dart';

import 'response/use_alone_response.dart';

part 'signup_client.g.dart';

@RestApi()
abstract class SignupClient {
  factory SignupClient(Dio dio, {String? baseUrl}) = _SignupClient;

  @GET('/use/account_book/alone')
  Future<HttpResponse<UseAloneResponse>> useAlone();

  @POST('/use/account_book/together')
  Future<HttpResponse<UseTogetherResponse>> useTogether(@Body() UseTogetherRequest useTogetherRequest);
}
