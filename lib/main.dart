import 'package:flutter/material.dart';

import 'widgets/categories_screen.dart';

void main() => runApp(DeliMealsApp());

class DeliMealsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: CategoriesPage(),
    );
  }
}
