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
            title: InkWell(
              child: Row(
                children: [
                  Text(
                    DateFormat('yyyy.MM.dd').format(date),
                    style: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
          body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  child: Text('지출 금액'),
                ),
                TextFormField(
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
                    border: OutlineInputBorder(),
                  ),
                  showCursor: false,
                ),
              ],
            ),
          ),
          bottomSheet: SafeArea(
              child: Container(
            width: double.infinity,
            color: Colors.black,
            child: ElevatedButton(
              onPressed: () {
                context
                    .read<AddSpendingAmountBloc>()
                    .add(AmountEntered(int.parse(_amountController.text.replaceAll(',', ''))));
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 14),
              ),
              child: const Text('다음'),
            ),
          )),
        );
      },
    );
  }
}
