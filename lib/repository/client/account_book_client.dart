import 'package:dio/dio.dart';
import 'package:hamoney/hamoney_config.dart';
import 'package:hamoney/model/account_book.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/http.dart';

part 'account_book_client.g.dart';

@RestApi(baseUrl: HamoneyConfig.baseUrl)
abstract class AccountBookClient {
  factory AccountBookClient(Dio dio, {String? baseUrl}) = _AccountBookClient;

  @GET('/use/account_book/alone')
  Future<HttpResponse<AccountBook>> useAlone();
}
