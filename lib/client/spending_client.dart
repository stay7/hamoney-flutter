import 'package:dio/dio.dart';
import 'package:hamoney/client/request/save_spending_request.dart';
import 'package:hamoney/client/response/base_response.dart';
import 'package:retrofit/retrofit.dart';

part 'spending_client.g.dart';

@RestApi()
abstract class SpendingClient {
  factory SpendingClient(Dio dio, {String? baseUrl}) = _SpendingClient;

  @POST('/spending/record')
  Future<HttpResponse<BaseResponse>> saveSpending(@Body() SaveSpendingRequest saveSpendingRequest);
}
