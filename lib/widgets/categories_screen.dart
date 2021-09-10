import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../dummy_data.dart';
import 'category_item.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Deli Meals',
          style: GoogleFonts.lato(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
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
                    id: e.id,
                    title: e.title,
                    color: e.color,
                  ))
              .toList(),
        ),
      ),
    );
  }
}
