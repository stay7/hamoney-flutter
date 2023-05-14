import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hamoney/resource/resource.dart';
import 'package:hamoney/screen/main_screen.dart';
import 'package:hamoney/screen/spending/bloc/add_spending_category_bloc.dart';

import 'add_spending_payment_screen.dart';

class AddSpendingCategoryScreen extends StatefulWidget {
  static const routeName = 'add_spending_category';

  const AddSpendingCategoryScreen({Key? key}) : super(key: key);

  @override
  State<AddSpendingCategoryScreen> createState() => _AddSpendingCategoryScreenState();
}

class _AddSpendingCategoryScreenState extends State<AddSpendingCategoryScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddSpendingCategoryBloc, AddSpendingCategoryState>(
      builder: (context, state) {
        if (state is AddSpendingCategoryInitial) {
          return DefaultTabController(
            initialIndex: 0,
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
              ),
              bottomSheet: SafeArea(
                child: Container(
                  width: double.infinity,
                  color: Colors.black,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(AddSpendingPaymentScreen.routeName);
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                    ),
                    child: Text('다음'),
                  ),
                ),
              ),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    child: Text('소비한 내역'),
                  ),
                  Container(
                    decoration: const BoxDecoration(color: Color(0xFFE5E8EC)),
                    child: TabBar(
                      labelColor: Colors.black,
                      labelStyle: TextStyle(fontWeight: FontWeight.bold),
                      unselectedLabelColor: Colors.black,
                      unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
                      indicatorPadding: EdgeInsets.all(3),
                      indicator: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(9)),
                      tabs: state.categories.map((category) => Tab(text: category.name)).toList(),
                      // indicator: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
                    ),
                  ),
                  Container(
                    height: 180,
                    child: TabBarView(
                      children: state.categories
                          .map((category) => Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: category.subCategories
                                    .map((e) => _SubCategoryView(icon: AppImage.emoji, name: e.name))
                                    .toList(),
                              ))
                          .toList(),
                    ),
                  ),
                  Text('메모'),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(Icons.close),
                        onPressed: _controller.clear,
                      ),
                      border: OutlineInputBorder(),
                    ),
                    showCursor: false,
                  ),
                ],
              ),
            ),
          );
        }
        return SizedBox.shrink();
      },
    );
  }
}

class _SubCategoryView extends StatelessWidget {
  const _SubCategoryView({Key? key, required this.icon, required this.name}) : super(key: key);

  final String icon;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(icon),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Text(name),
          ),
        ],
      ),
    );
  }
}
