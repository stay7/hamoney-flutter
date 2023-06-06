import '../db/account_book_box.dart';
import 'client/status_client.dart';

class StatusRepository {
  StatusRepository({
    required this.statusClient,
    required this.accountBookBox,
  });

  final StatusClient statusClient;
  final AccountBookBox accountBookBox;

  void status() async {
    final response = await statusClient.status();
  }
}
