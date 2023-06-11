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
      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                CircleAvatar(),
                Column(
                  children: [
                    Text(accountBookMember.accountBook.name),
                    Text(DateFormat('yyyy년 MM월 dd일').format(
                      DateTime.fromMillisecondsSinceEpoch(accountBookMember.accountBook.createdAt),
                    ))
                  ],
                )
              ],
            ),
          ),
          Container(
            child: Row(
              children: accountBookMember.members.map((e) => _Member(member: e)).toList(),
            ),
          )
        ],
      ),
    );
  }
}

class _Member extends StatelessWidget {
  const _Member({Key? key, required this.member}) : super(key: key);

  final Member member;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
      ),
      child: Row(
        children: [
          const CircleAvatar(),
          Text(member.nickname),
        ],
      ),
    );
  }
}
