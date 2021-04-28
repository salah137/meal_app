import 'package:mealapp/Screens/CategorieItemes.dart';
import '../models/dummy_data.dart';
import 'package:flutter/material.dart';
import '../main.dart';
import '../Latouts/Drawer.dart';


class HomePage extends StatefulWidget {
  static var name = "Home";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meal App"),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
        itemCount: categories.length,
        itemBuilder: (_, i) {
          return InkWell(
            borderRadius: BorderRadius.circular(15),
            onTap: () {
              Navigator.pushNamed(
                context,
                CategoryItems.name,
                arguments: {
                  "title": categories[i].title,
                  "id": categories[i].id,
                },
              );
            },
            child: Container(
              padding: EdgeInsets.all(5),
              alignment: Alignment.center,
              child: Text(
                categories[i].title,
                style: TextStyle(
                  fontFamily: "Schyler",
                  fontSize: 25,
                ),
              ),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      categories[i].color.withOpacity(0.4),
                      categories[i].color
                    ],
                  ),
                  borderRadius: BorderRadius.circular(15)),
            ),
          );
        },
      ),
      drawer: MyDrawer(),
    );
  }
}
