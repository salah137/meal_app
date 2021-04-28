import 'package:mealapp/Latouts/Drawer.dart';
import 'package:mealapp/main.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import '../Latouts/MealItemCreator.dart';
import '../Latouts/Drawer.dart';
import 'Settings.dart';
class FavoritesScreen extends StatefulWidget {
  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    if (MyAppState.favorites.length != 0) {
      return Scaffold(
      backgroundColor: Settings.themeColor,

        appBar: AppBar(
          title: Text("Favorites"),
        ),
        body: ListView.builder(
          itemCount: MyAppState.favorites.length,
          itemBuilder: (_, i) {
            return FoodItem(
              food: MyAppState.favorites[i],
            );
          },
        ),
        drawer: MyDrawer(),
      );
    } else {
      return Scaffold(
      backgroundColor: Settings.themeColor,

        appBar: AppBar(
          title: Text("Favorites"),
        ),
        body: Center(
          child: Text(
            "Nothing To Show",
            style: TextStyle(fontSize: 30),
          ),
        ),
        drawer: MyDrawer(),
      );
    }
  }
}
