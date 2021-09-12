import 'package:delimeals/dummy_data.dart';
import 'package:flutter/material.dart';

class MealDetailsScreen extends StatelessWidget {
  static const routName = '/meal-details';

  Widget buildSectionTitle(BuildContext context, String title) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments;
    final selectedMeal = DUMMY_MEALS.firstWhere((element) => element.id == mealId);
    final appBar = AppBar(
      title: Text(selectedMeal.title),
    );

    return Scaffold(
      appBar: appBar,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                child: Image.network(
                  selectedMeal.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),
              buildSectionTitle(context, 'Ingredients'),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                width: double.infinity,
                child: ListView.separated(
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: selectedMeal.ingredients.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(
                        selectedMeal.ingredients[index],
                        textAlign: TextAlign.center,
                      ),
                      visualDensity: VisualDensity.compact,
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              buildSectionTitle(context, 'Steps'),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                // height: selectedMeal.steps.length.toDouble() * 100,
                child: ListView.separated(
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: selectedMeal.steps.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        child: Text('${index + 1}'),
                      ),
                      title: Text(selectedMeal.steps[index]),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context, mealId);
        },
        backgroundColor: Colors.grey[900],
        child: Icon(Icons.delete_outline_rounded),
      ),
    );
  }
}
