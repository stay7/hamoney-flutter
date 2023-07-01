import 'package:dio/dio.dart';
import 'package:hamoney/client/response/status/status_response.dart';
import 'package:retrofit/retrofit.dart';

part 'status_client.g.dart';

@RestApi()
abstract class StatusClient {
  factory StatusClient(Dio dio, {String? baseUrl}) = _StatusClient;

  @GET('/status')
  Future<HttpResponse<StatusResponse>> status();
}
