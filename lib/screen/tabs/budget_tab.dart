import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamoney/bloc/budget/budget_bloc.dart';
import 'package:hamoney/widgets/hamoney_navigation_bar.dart';

class BudgetTab extends StatelessWidget {
  const BudgetTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<BudgetBloc, BudgetState>(
      listener: (context, state) {},
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Budget'),
          ],
        ),
        bottomNavigationBar: HamoneyNavigationBar(),
      ),
    );
  }
}
