import 'package:flutter/material.dart';
import '../models/category.dart';
import '../Screens/FoodInformations.dart';

class FoodItem extends StatelessWidget {
  final Meal food;

  const FoodItem({Key key, this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) {
              return FoodInfo(
                food: food,
              );
            },
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.network(
                    food.imageUrl,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.all(10),
                  color: Colors.black87,
                  child: Text(
                    food.title,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Icon(Icons.watch),
                      Text("${food.duration.toString()}min")
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Icon(Icons.handyman_rounded),
                      Text(food.complexity.toString().substring(
                          food.complexity.toString().indexOf(".") + 1))
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Icon(Icons.euro),
                      Text(food.affordability.toString().substring(
                          food.affordability.toString().indexOf(".") + 1))
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
