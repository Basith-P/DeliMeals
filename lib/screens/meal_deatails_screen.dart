import 'package:flutter/material.dart';

class MealDetailsScreen extends StatelessWidget {
  static const routName = '/meal-details';

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            '$mealId details',
          ),
        ),
      ),
    );
  }
}
