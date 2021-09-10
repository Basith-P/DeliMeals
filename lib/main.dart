import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/category_meals_screen.dart';
import 'widgets/categories_screen.dart';

void main() => runApp(DeliMealsApp());

class DeliMealsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'DeliMeals',
        theme: ThemeData.dark().copyWith(
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          scaffoldBackgroundColor: Color(0xff0C0B10),
          appBarTheme: AppBarTheme(
            backgroundColor: Color(0xff0C0B10),
            elevation: 0,
          ),
          textTheme: ThemeData.dark().textTheme.copyWith(
              bodyText2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              bodyText1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              headline6: GoogleFonts.lato(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
          colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.amber),
        ),
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (ctx) => CategoriesPage(),
          CategoryMealsScreen.routName: (ctx) => CategoryMealsScreen(),
        });
  }
}
