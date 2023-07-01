import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamoney/screen/spending/bloc/add_spending_amount_bloc.dart';
import 'package:hamoney/screen/spending/add_spending_category_screen.dart';
import 'package:intl/intl.dart';

class AddSpendingAmountScreen extends StatefulWidget {
  static const routeName = 'add_spending_amount';

  const AddSpendingAmountScreen({Key? key}) : super(key: key);

  @override
  State<AddSpendingAmountScreen> createState() => _AddSpendingAmountScreenState();
}

class _AddSpendingAmountScreenState extends State<AddSpendingAmountScreen> {
  final TextEditingController _amountController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    DateTime date = DateTime.now();

    return BlocConsumer<AddSpendingAmountBloc, AddSpendingAmountState>(
      listener: (context, state) {
        if (state is SpendingAmountEntered) {
          Navigator.of(context).pushNamed(AddSpendingCategoryScreen.routeName);
        }
      },
      builder: (context, state) {
        if (state is AddSpendingAmountInitial) {
          date = state.selectedDate;
        }

        return Scaffold(
          appBar: AppBar(
            title: Text(
              '지출 입력',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            centerTitle: true,
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.close, color: Colors.black),
            ),
          ),
          body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 17.0),
            child: Column(
              children: [
                InkWell(
                  child: Container(
                    height: 51,
                    child: Row(
                      children: [
                        Text(
                          DateFormat('yyyy년 MM월 dd일').format(date.toLocal()),
                          style: const TextStyle(color: Color(0xff191919), fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const Icon(
                          Icons.arrow_drop_down,
                          color: Color(0xff191919),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 341,
                  height: 62,
                  child: TextFormField(
                    controller: _amountController,
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    inputFormatters: [
                      CurrencyTextInputFormatter(
                        locale: 'ko',
                        decimalDigits: 0,
                        symbol: '',
                      )
                    ],
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.attach_money),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.close),
                        onPressed: _amountController.clear,
                      ),
                      labelText: '지출 금액',
                      labelStyle: TextStyle(fontSize: 12, color: Color(0xff191919)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2.0),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffeaeaea), width: 2.0),
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    showCursor: false,
                  ),
                ),
              ],
            ),
          ),
          bottomSheet: SafeArea(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 17, right: 17, bottom: 14),
              child: ElevatedButton(
                onPressed: () {
                  context
                      .read<AddSpendingAmountBloc>()
                      .add(AmountEntered(int.parse(_amountController.text.replaceAll(',', ''))));
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  backgroundColor: Colors.black,
                ),
                child: const Text(
                  '다음',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
