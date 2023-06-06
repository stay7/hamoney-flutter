import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamoney/model/member.dart';
import 'package:hamoney/model/sub_category.dart';
import 'package:hamoney/screen/spending/bloc/add_spending_payment_bloc.dart';

import '../../model/account_book_pay.dart';
import '../../model/member_pay.dart';

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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    AddSpendingPaymentState state = context
        .read<AddSpendingPaymentBloc>()
        .state;
    if (state is AddSpendingPaymentInitial) {
      sharedPayments = state.sharedPayments;
      members = state.members;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            child: Column(
              children: [
                Text('결제수단'),
                ListTile(
                  title: Text("공동지출"),
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
                  title: Text("개인지출"),
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
                )
              ],
            ),
          ),
          Text('결제수단'),
          Container(
            child: Column(
              children: sharedPayments.map((payment) => _PaymentView(name: payment.name, iconId: payment.iconId))
                  .toList(),
            ),
          ),
          Container(
            child: Column(
              children: members.map((member) =>
                  Row(
                    children: member.payments.map(
                            (payment) => _PaymentView(name: payment.name, iconId: payment.iconId)
                    ).toList(),
                  )).toList(),
            ),
          )
        ],
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
