import 'package:dio/dio.dart';
import 'package:hamoney/repository/client/response/status/status_response.dart';
import 'package:retrofit/retrofit.dart';

import '../../hamoney_config.dart';

part 'status_client.g.dart';

@RestApi(baseUrl: HamoneyConfig.baseUrl)
abstract class StatusClient {
  factory StatusClient(Dio dio, {String? baseUrl}) = _StatusClient;

  @GET('/status')
  Future<HttpResponse<StatusResponse>> status();
}
