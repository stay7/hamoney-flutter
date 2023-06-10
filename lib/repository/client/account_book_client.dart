import 'package:dio/dio.dart';
import 'package:hamoney/hamoney_config.dart';
import 'package:hamoney/repository/client/request/use_together_request.dart';
import 'package:hamoney/repository/client/response/account_book_members_response.dart';
import 'package:hamoney/repository/client/response/fetch_account_book_response.dart';
import 'package:hamoney/repository/client/response/use_alone_response.dart';
import 'package:hamoney/repository/client/response/use_together_response.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/http.dart';

part 'account_book_client.g.dart';

@RestApi(baseUrl: HamoneyConfig.baseUrl)
abstract class AccountBookClient {
  factory AccountBookClient(Dio dio, {String? baseUrl}) = _AccountBookClient;

  @GET('/use/account_book/alone')
  Future<HttpResponse<UseAloneResponse>> useAlone();

  @POST('/use/account_book/together')
  Future<HttpResponse<UseTogetherResponse>> useTogether(@Body() UseTogetherRequest useTogetherRequest);

  @GET('/account_book')
  Future<HttpResponse<FetchAccountBookResponse>> getAccountBook(@Query('accountBookId') int id);

  @GET('/account_book/members')
  Future<HttpResponse<AccountBookMembersResponse>> getMembers(@Query('accountBookId') int id);
}
