import 'package:flutter/material.dart';

import '/screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, Function tapHandler) {
    return ListTile(
      onTap: tapHandler,
      leading: Icon(
        icon,
        color: Colors.grey[50],
      ),
      title: Text(title),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        Container(
          height: 250,
          width: double.infinity,
          child: Image.network(
            'https://img.freepik.com/free-photo/delicious-vietnamese-food-including-pho-ga-noodles-spring-rolls-white-table_181624-34062.jpg?size=626&ext=jpg',
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 20),
        buildListTile(
          'All Meals',
          Icons.restaurant_outlined,
          () {
            Navigator.pushReplacementNamed(context, '/');
          },
        ),
        buildListTile(
          'Filters',
          Icons.settings_rounded,
          () {
            Navigator.pushNamed(context, FiltersScreen.routName);
          },
        ),
      ],
    ));
  }
}
