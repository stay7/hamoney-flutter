import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../model/account_book_member.dart';
import '../model/member.dart';

class CardAccountBook extends StatelessWidget {
  const CardAccountBook({
    Key? key,
    required this.accountBookMember,
  }) : super(key: key);

  final AccountBookMember accountBookMember;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20, top: 24),
        height: 160,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              accountBookMember.accountBook.name,
                              style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.keyboard_arrow_right, color: Colors.white)
                          ],
                        ),
                        Text(
                          DateFormat('yyyy년 MM월 dd일').format(
                            DateTime.fromMillisecondsSinceEpoch(accountBookMember.accountBook.createdAt),
                          ),
                          style: TextStyle(color: Colors.white.withOpacity(0.54), fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Center(
                      child: CircleAvatar(
                    radius: 26,
                  )),
                ],
              ),
            ),
            _Members(members: accountBookMember.members),
          ],
        ),
      ),
    );
  }
}

class _Members extends StatelessWidget {
  _Members({Key? key, required this.members}) : super(key: key);

  final List<Member> members;

  final BoxDecoration containerDecoration = BoxDecoration(
    color: Colors.white.withOpacity(0.12),
    borderRadius: BorderRadius.circular(5),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 32,
              decoration: containerDecoration,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "참여 멤버",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  Text(
                    _memberText(members.map((e) => e.nickname).toList()),
                    style: TextStyle(color: Colors.white, fontSize: 12),
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
            ),
          ),
          if (members.length == 1) ...[
            Container(
              width: 32,
              height: 32,
              margin: EdgeInsets.only(left: 4),
              padding: EdgeInsets.all(8),
              decoration: containerDecoration,
              child: Center(
                child: Text("+", style: TextStyle(color: Colors.white), textAlign: TextAlign.center),
              ),
            )
          ]
        ],
      ),
    );
  }

  String _memberText(List<String> names) {
    print(names.map((e) => "@$e").join(","));
    return names.map((e) => "@$e").join(",");
  }
}
