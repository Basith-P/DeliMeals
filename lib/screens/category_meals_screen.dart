import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routName = '/category-meals';

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String, String>;
    return Scaffold(
      appBar: AppBar(
        title: Text(routeArgs['title']),
      ),
      body: Container(
        child: Text('The list of recipies appear here'),
      ),
    );
  }
}
