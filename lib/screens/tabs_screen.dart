import 'package:flutter/material.dart';
import 'package:foodie_me/screens/categories_screen.dart';
import 'package:foodie_me/screens/favouriteScreen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('FoodieMe'),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.category),
                text: 'Categories',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'Favourite',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CatergoriesScreen(),
            FavouriteScreen(),
          ],
        ),
      ),
    );
  }
}
