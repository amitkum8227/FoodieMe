import 'package:flutter/material.dart';

import '../Model/meal.dart';
import '../widget/meal_item.dart';

class FavouriteScreen extends StatelessWidget {
  final List<Meal> favouriteMeals;

  FavouriteScreen(this.favouriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favouriteMeals.isEmpty) {
      return Center(
        child: Text('There is no favourites yet- please add some!!!!'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favouriteMeals[index].id,
            title: favouriteMeals[index].title,
            imageUrl: favouriteMeals[index].imageUrl,
            duration: favouriteMeals[index].duration,
            complexity: favouriteMeals[index].complexity,
            affordability: favouriteMeals[index].affordability,
          );
        },
        itemCount: favouriteMeals.length,
      );
    }
  }
}
