import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hamoney/model/member.dart';
import 'package:hamoney/model/sub_category.dart';
import 'package:hamoney/resource/resource.dart';
import 'package:hamoney/screen/spending/bloc/add_spending_payment_bloc.dart';
import 'package:hamoney/widgets/label_title.dart';

import '../../model/account_book_pay.dart';

class AddSpendingPaymentScreen extends StatefulWidget {
  static const routeName = 'add_spending_payment';

  const AddSpendingPaymentScreen({Key? key}) : super(key: key);

  @override
  State<AddSpendingPaymentScreen> createState() => _AddSpendingPaymentScreenState();
}

class _AddSpendingPaymentScreenState extends State<AddSpendingPaymentScreen> {
  PaymentType? _selectedPaymentType = PaymentType.SHARED;
  List<AccountBookPay> sharedPayments = List.empty();
  List<Member> members = List.empty();
  late SubCategory selectedCategory;

  @override
  void initState() {
    super.initState();
    AddSpendingPaymentState state = context.read<AddSpendingPaymentBloc>().state;
    if (state is AddSpendingPaymentInitial) {
      sharedPayments = state.sharedPayments;
      members = state.members;
      selectedCategory = state.selectedCategory;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.of(context).popUntil((route) => false);
          },
          child: SvgPicture.asset(
            AppImage.iconLeftArrow,
            width: 24,
            height: 24,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: SvgPicture.asset(
              AppImage.iconClose,
              width: 24,
              height: 24,
            ),
          )
        ],
        title: Row(
          children: [
            SvgPicture.asset(AppImage.emoji),
            Text(
              selectedCategory.name,
              style: TextStyle(
                color: Color(0xff191919).withOpacity(0.87),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          children: [
            Column(
              children: [
                LabelTitle(title: '결제수단'),
                ListTile(
                  title: Row(children: [SvgPicture.asset(AppImage.iconGroup), Text("공동지출")]),
                  trailing: Radio<PaymentType>(
                    value: PaymentType.SHARED,
                    groupValue: _selectedPaymentType,
                    onChanged: (PaymentType? selected) {
                      setState(() {
                        _selectedPaymentType = selected;
                      });
                    },
                  ),
                  onTap: () {
                    setState(() {
                      _selectedPaymentType = PaymentType.SHARED;
                    });
                  },
                ),
                ListTile(
                  title: Row(children: [SvgPicture.asset(AppImage.iconPrivate), Text("개인지출")]),
                  trailing: Radio<PaymentType>(
                    value: PaymentType.PRIVATE,
                    groupValue: _selectedPaymentType,
                    onChanged: (PaymentType? selected) {
                      setState(() {
                        _selectedPaymentType = selected;
                      });
                    },
                  ),
                  onTap: () {
                    setState(() {
                      _selectedPaymentType = PaymentType.PRIVATE;
                    });
                  },
                ),
                if (_selectedPaymentType == PaymentType.PRIVATE)
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: members.map((e) => _MembersView(member: e)).toList(),
                    ),
                  )
              ],
            ),
            LabelTitle(title: '결제수단'),
            _selectedPaymentType == PaymentType.SHARED
                ? Container(
                    child: Column(
                      children: sharedPayments
                          .map((payment) => _PaymentView(name: payment.name, iconId: payment.iconId))
                          .toList(),
                    ),
                  )
                : Container(
                    child: Column(
                        children: members
                            .map(
                              (member) => Row(
                                children: member.payments
                                    .map((payment) => _PaymentView(name: payment.name, iconId: payment.iconId))
                                    .toList(),
                              ),
                            )
                            .toList()),
                  ),
          ],
        ),
      ),
    );
  }
}

class _MembersView extends StatefulWidget {
  final Member member;

  const _MembersView({required this.member});

  @override
  State<_MembersView> createState() => _MembersViewState();
}

class _MembersViewState extends State<_MembersView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 48,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 0.50,
            color: Colors.black.withOpacity(0.5),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Center(
        child: Text(
          widget.member.nickname,
          style: TextStyle(fontSize: 14, color: Color(0xff191919), fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}

class _PaymentView extends StatelessWidget {
  final int iconId;
  final String name;

  const _PaymentView({required this.name, required this.iconId});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        Text(name),
      ],
    );
  }
}

enum PaymentType { SHARED, PRIVATE }

class AddSpendingPaymentScreenArgument {
  final SubCategory selectedCategory;

  AddSpendingPaymentScreenArgument(this.selectedCategory);
}
