import 'package:dio/dio.dart';
import 'package:hamoney/hamoney_config.dart';
import 'package:hamoney/model/account_book.dart';
import 'package:hamoney/repository/response/account_book_id_response.dart';
import 'package:hamoney/repository/response/account_book_members_response.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/http.dart';

part 'account_book_client.g.dart';

@RestApi(baseUrl: HamoneyConfig.baseUrl)
abstract class AccountBookClient {
  factory AccountBookClient(Dio dio, {String? baseUrl}) = _AccountBookClient;

  @GET('/use/account_book/alone')
  Future<HttpResponse<AccountBookIdResponse>> useAlone();

  @GET('/account_book')
  Future<HttpResponse<AccountBook>> getAccountBook(@Query('accountBookId') int id);

  @GET('/account_book/members')
  Future<HttpResponse<AccountBookMembersResponse>> getMembers(@Query('accountBookId')int id);
}
