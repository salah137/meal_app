import 'package:flutter/material.dart';
import '../models/category.dart';
import '../main.dart';
import 'Settings.dart';
class FoodInfo extends StatefulWidget {
  static var name = "FF";
  final Meal food;

  const FoodInfo({Key key, this.food}) : super(key: key);

  @override
  _FoodInfoState createState() => _FoodInfoState(food);
}

class _FoodInfoState extends State<FoodInfo> {
  final food;

  _FoodInfoState(this.food);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(widget.food.title),
      ),
      body: ListView(children: [
        Container(
          height: 300,
          width: 155,
          color: Colors.red,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(widget.food.imageUrl, fit: BoxFit.cover),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Center(
            child: Text(
          "Ingredients : ",
          style: TextStyle(fontSize: 30, fontFamily: "Schyler"),
        )),
        SizedBox(
          height: 10,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 150,
            width: 150,
            color: Colors.amber,
            child: Center(
              child: ListView(
                children: [
                  ...widget.food.ingredients.map((val) {
                    var w = widget.food.ingredients.indexOf(val) + 1;
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              w.toString(),
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(" - "),
                            Text(val, style: TextStyle(fontSize: 15))
                          ],
                        ),
                        w != widget.food.ingredients.length
                            ? Container(
                                height: 1,
                                width: double.infinity,
                                color: Colors.black,
                              )
                            : SizedBox(
                                height: 1,
                              )
                      ],
                    );
                  })
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Center(
          child: Text(
            "Steps : ",
            style: TextStyle(fontFamily: "Schyler", fontSize: 30),
          ),
        ),
        Container(
          decoration: BoxDecoration(
          color: Colors.white,
  borderRadius: BorderRadius.circular(10)
          ),
          height: 200,
          child: ListView(
            children: [
              ...widget.food.steps.map((e) => Column(
                children: [
                  Row(
                        children: [
                          CircleAvatar(
                            child: Text("${widget.food.steps.indexOf(e) + 1}"),
                          ),
                          Container(
                            width: 300,
                            child: Text(e),
                          )
                        ],
                      ),
                      SizedBox(height: 10,)
                ],
              ))
            ],
          ),
        ),
        SizedBox(height: 20,)
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(
            () {
              MyAppState.favorites.contains(food)
                  ? MyAppState.favorites.remove(food)
                  : MyAppState.favorites.add(food);
            },
          );
        },
        child: Icon(MyAppState.favorites.contains(food)
            ? Icons.favorite
            : Icons.favorite_border),
      ),
    );
  }
}
