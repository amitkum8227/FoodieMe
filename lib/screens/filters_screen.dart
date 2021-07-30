import 'package:flutter/material.dart';
import 'package:foodie_me/widget/main_drawer.dart';

class FiltersScreen extends StatelessWidget {
  static const routeName = '/filters';

  //const FiltersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FoodieMe'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text('fILter'),
      ),
    );
  }
}
