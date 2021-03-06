import 'package:flutter/material.dart';
import 'package:foodie_me/Model/meal.dart';
import 'package:foodie_me/screens/categories_screen.dart';
import 'package:foodie_me/screens/favouriteScreen.dart';
import 'package:foodie_me/widget/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  // const TabsScreen({Key? key}) : super(key: key);

  final List<Meal> favouriteMeals;

  TabsScreen(this.favouriteMeals);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  late List<Widget> _Pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _Pages = [
      CatergoriesScreen(),
      FavouriteScreen(widget.favouriteMeals),
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var title;
    return Scaffold(
      appBar: AppBar(
        title: Text('FoodieMe'),
      ),
      drawer: MainDrawer(),
      body: _Pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedPageIndex,
        //type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.category),
            title: Text('Categories'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.star),
            title: Text('Favourites'),
          )
        ],
      ),
    );
  }
}
