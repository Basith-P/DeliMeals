import 'package:flutter/material.dart';

import '../dummy_data.dart';
import 'category_item.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Deli Meals',
          style: Theme.of(context).textTheme.headline1,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: GridView(
          padding: const EdgeInsets.all(15),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
          ),
          children: DUMMY_CATEGORIES
              .map((e) => CategoryItem(
                    title: e.title,
                    color: e.color,
                  ))
              .toList(),
        ),
      ),
    );
  }
}
