import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/spending/spending_bloc.dart';

class SpendingScreen extends StatelessWidget {
  static const routeName = 'spending';

  const SpendingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<SpendingBloc, SpendingState>(
      listener: (context, state) {},
      child: Scaffold(
        body: Center(
          child: Text('Spending'),
        ),
      ),
    );
  }
}
