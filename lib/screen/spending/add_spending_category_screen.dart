import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hamoney/model/sub_category.dart';
import 'package:hamoney/resource/resource.dart';
import 'package:hamoney/screen/main_screen.dart';
import 'package:hamoney/screen/spending/bloc/add_spending_category_bloc.dart';
import 'package:logger/logger.dart';

import '../../model/category.dart';
import 'add_spending_payment_screen.dart';

class AddSpendingCategoryScreen extends StatefulWidget {
  static const routeName = 'add_spending_category';

  const AddSpendingCategoryScreen({Key? key}) : super(key: key);

  @override
  State<AddSpendingCategoryScreen> createState() => _AddSpendingCategoryScreenState();
}

class _AddSpendingCategoryScreenState extends State<AddSpendingCategoryScreen> {
  final TextEditingController _controller = TextEditingController();
  final Logger logger = Logger();
  int amount = 0;
  List<Category> categories = List.empty();

  @override
  void initState() {
    super.initState();
    AddSpendingCategoryState state = context.read<AddSpendingCategoryBloc>().state;
    if (state is AddSpendingCategoryInitial) {
      amount = state.amount;
      categories = state.categories;
    }
  }

  @override
  Widget build(BuildContext context) {
    SubCategory? selectedCategory = null;

    return BlocConsumer<AddSpendingCategoryBloc, AddSpendingCategoryState>(
      listener: (content, state) {
        if (state is SelectingCategory) {
          selectedCategory = state.selectedCategory;
          print(selectedCategory);
        }
      },
      builder: (context, state) {
        return DefaultTabController(
          initialIndex: 0,
          length: categories.length,
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                "${amount}원",
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
                    tabs: categories.map((category) => Tab(text: category.name)).toList(),
                    // indicator: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
                  ),
                ),
                Container(
                  height: 180,
                  child: TabBarView(
                    children: categories
                        .map((category) => Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: category.subCategories
                                  .map(
                                    (e) => _SubCategoryView(
                                      subCategory: e,
                                      selected: selectedCategory != null && selectedCategory == e,
                                    ),
                                  )
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
      },
    );
  }
}

class _SubCategoryView extends StatelessWidget {
  const _SubCategoryView({Key? key, required this.subCategory, required this.selected}) : super(key: key);

  final SubCategory subCategory;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddSpendingCategoryBloc, AddSpendingCategoryState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            context.read<AddSpendingCategoryBloc>().add(CategorySelect(subCategory));
          },
          child: Container(
            width: 75,
            height: 80,
            decoration: BoxDecoration(color: selected == true ? const Color(0xFFF2F4F7) : Colors.transparent),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(AppImage.emoji),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Text(subCategory.name),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
