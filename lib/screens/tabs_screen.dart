import 'package:flutter/material.dart';

import '/widgets/main_drawer.dart';
import 'categories_screen.dart';
import 'favourites_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, Object>> _pages = [
    {'title': 'All Meals', 'page': CategoriesScreen()},
    {'title': 'Favorites', 'page': FavoritesScreen()},
  ];
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title']),
      ),
      drawer: MainDrawer(),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
          onTap: _selectPage,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined),
              activeIcon: Icon(Icons.category_rounded),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star_border_rounded),
              activeIcon: Icon(Icons.star_rounded),
              label: 'Favorites',
            ),
          ],
          backgroundColor: Color(0xff151515),
          elevation: 0,
          selectedItemColor: Colors.grey[50],
          unselectedItemColor: Colors.grey,
          currentIndex: _selectedPageIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false),
    );
  }
}
