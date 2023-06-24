import 'package:hamoney/model/member.dart';
import 'package:hamoney/model/member_pay.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:collection/collection.dart';

class MemberHive {
  static const String memberKey = "box_member";

  MemberHive();

  late Box memberBox;

  Future<void> initialize() async {
    Hive.registerAdapter<Member>(MemberAdapter());
    Hive.registerAdapter<MemberPay>(MemberPayAdapter());

    // hive는 dart 문제로 List<> 타입의 box를 지원하지 않는다
    memberBox = await Hive.openBox(memberKey);
  }

  Future<void> saveAll(int accountBookId, List<Member> members) async {
    await memberBox.put(accountBookId, members);
  }

  List<Member> findAll(int accountBookId) {
    return memberBox.get(accountBookId)?.cast<Member>() ?? List.empty();
  }
}
