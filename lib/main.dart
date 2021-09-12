import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/filters_screen.dart';
import 'screens/tabs_screen.dart';
import 'screens/meal_deatails_screen.dart';
import 'screens/category_meals_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(DeliMealsApp());
}

class DeliMealsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'DeliMeals',
        theme: ThemeData.dark().copyWith(
          canvasColor: Colors.grey[900],
          scaffoldBackgroundColor: Color(0xff0C0B10),
          appBarTheme: AppBarTheme(
            backgroundColor: Color(0xff0C0B10),
            elevation: 0,
          ),
          textTheme: ThemeData.dark().textTheme.copyWith(
                  headline6: GoogleFonts.lato(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
          colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.grey),
        ),
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (ctx) => TabsScreen(),
          CategoryMealsScreen.routName: (ctx) => CategoryMealsScreen(),
          MealDetailsScreen.routName: (ctx) => MealDetailsScreen(),
          FiltersScreen.routName: (ctx) => FiltersScreen(),
        });
  }
}
