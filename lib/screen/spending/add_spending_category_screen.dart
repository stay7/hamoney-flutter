import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamoney/screen/main_screen.dart';
import 'package:hamoney/screen/spending/bloc/add_spending_category_bloc.dart';

class AddSpendingCategoryScreen extends StatefulWidget {
  static const routeName = 'add_spending_category';

  const AddSpendingCategoryScreen({Key? key}) : super(key: key);

  @override
  State<AddSpendingCategoryScreen> createState() => _AddSpendingCategoryScreenState();
}

class _AddSpendingCategoryScreenState extends State<AddSpendingCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddSpendingCategoryBloc, AddSpendingCategoryState>(
      builder: (context, state) {
        if (state is AddSpendingCategoryInitial) {
          return DefaultTabController(
            length: state.categories.length,
            child: Scaffold(
              appBar: AppBar(
                title: Text(
                  "${state.amount}원",
                  style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                ),
                actions: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).popUntil(ModalRoute.withName(MainScreen.routeName));
                    },
                    icon: Icon(Icons.close, color: Colors.black),
                  ),
                ],
                bottom: TabBar(
                  tabs: state.categories.map((category) => Text(category.name)).toList(),
                ),
              ),
              bottomSheet: SafeArea(
                child: Container(
                  width: double.infinity,
                  color: Colors.black,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(AddSpendingCategoryScreen.routeName);
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 14),
                    ),
                    child: Text('다음'),
                  ),
                ),
              ),
              body: Column(children: [
                const Text('소비한 내역'),
                TabBarView(children: state.categories.map((category) => Text(category.subCategories[0].name)).toList())
              ]),
            ),
          );
        }
        return SizedBox.shrink();
      },
    );
  }
}
