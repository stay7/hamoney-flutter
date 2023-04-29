import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/saving/saving_bloc.dart';
import '../../widgets/hamoney_navigation_bar.dart';

class SavingTab extends StatelessWidget {
  const SavingTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<SavingBloc, SavingState>(
      listener: (context, state) {},
      child: Scaffold(
        body: Center(
          child: Text('Saving'),
        ),
        bottomNavigationBar: HamoneyNavigationBar(),
      ),
    );
  }
}
