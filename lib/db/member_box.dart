import 'package:hamoney/model/member.dart';
import 'package:hamoney/model/member_pay.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:collection/collection.dart';

class MemberHive {
  static const String memberKey = "member";

  MemberHive();

  late Box<Member> memberBox;

  Future<void> initialize() async {
    Hive.registerAdapter<Member>(MemberAdapter());
    Hive.registerAdapter<MemberPay>(MemberPayAdapter());

    memberBox = await Hive.openBox<Member>(memberKey);
  }

  void saveAll(List<Member> members) {
    for (var element in members) {
      memberBox.put(element.id, element);
    }
  }

  void save(Member member) {
    memberBox.put(member.id, member);
  }

  List<Member> findAll(List<int> memberIds) {
    return memberIds.map((e) => find(e)).whereNotNull().toList();
  }

  Member? find(int memberId) {
    return memberBox.get(memberId);
  }
}
