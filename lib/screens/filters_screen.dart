import 'package:flutter/material.dart';

import '/widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routName = '/filters';

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFree = false;
  var _vegetarian = false;
  var _vegan = false;
  var _lactoseFree = false;

  _buildSwitchListTile(
    String title,
    String subtititle,
    bool currentValue,
    Function updateValue,
  ) {
    return SwitchListTile(
      title: Text(title),
      subtitle: Text(subtititle),
      value: currentValue,
      inactiveTrackColor: Colors.grey[800],
      activeTrackColor: Colors.grey[700],
      onChanged: updateValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Filters'),
        ),
        drawer: MainDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(15),
                child: Text('Adjust your meal selection'),
              ),
              Expanded(
                child: ListView(
                  children: [
                    _buildSwitchListTile(
                      'Gluten-Free',
                      'Only gluten-free meals',
                      _glutenFree,
                      (newValue) {
                        setState(() {
                          _glutenFree = newValue;
                        });
                      },
                    ),
                    _buildSwitchListTile(
                      'Lactose-Free',
                      'Only gluten-free meals',
                      _lactoseFree,
                      (newValue) {
                        setState(() {
                          _lactoseFree = newValue;
                        });
                      },
                    ),
                    _buildSwitchListTile(
                      'Vegetarian',
                      'Only vegitarian meals',
                      _vegetarian,
                      (newValue) {
                        setState(() {
                          _vegetarian = newValue;
                        });
                      },
                    ),
                    _buildSwitchListTile(
                      'Vegan',
                      'Only vegan meals',
                      _vegan,
                      (newValue) {
                        setState(() {
                          _vegan = newValue;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
