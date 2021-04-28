import 'package:flutter/material.dart';
import 'package:mealapp/models/category.dart';
import '../models/dummy_data.dart';
import '../Latouts/MealItemCreator.dart';

class CategoryItems extends StatelessWidget {
  static var name = "CatList";
  List<Meal> used = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context).settings.arguments as Map;
    for (var i in meals) {
      if (i.categories.contains(args["id"])) {
        used.add(i);
      }
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(args["title"]),
      ),
      body: ListView.builder(
        itemCount: used.length,
        itemBuilder: (_, i) {
          return FoodItem(food: used[i],);
        },
      ),
    );
  }
}
