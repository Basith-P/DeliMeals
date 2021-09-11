import 'package:flutter/material.dart';

import '/dummy_data.dart';
import '/widgets/meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routName = '/category-meals';

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final catId = routeArgs['id'];
    final catMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(catId);
    }).toList();

    return Scaffold(
        appBar: AppBar(
          title: Text(routeArgs['title']),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemBuilder: (ctx, index) {
              return MealItem(
                title: catMeals[index].title,
                imageUrl: catMeals[index].imageUrl,
                duration: catMeals[index].duration,
                complexity: catMeals[index].complexity,
                affordability: catMeals[index].affordability,
              );
            },
            itemCount: catMeals.length,
          ),
        ));
  }
}
