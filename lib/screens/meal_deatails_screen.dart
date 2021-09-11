import 'package:delimeals/dummy_data.dart';
import 'package:flutter/material.dart';

class MealDetailsScreen extends StatelessWidget {
  static const routName = '/meal-details';

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments;
    final selectedMeal = DUMMY_MEALS.firstWhere((element) => element.id == mealId);

    return Scaffold(
      appBar: AppBar(
        title: Text(selectedMeal.title),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Ingredients',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              width: double.infinity,
              height: 300,
              child: ListView.builder(
                itemCount: selectedMeal.ingredients.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    color: Colors.grey[900],
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      child: Text(selectedMeal.ingredients[index]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
