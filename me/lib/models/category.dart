import 'package:flutter/material.dart';

enum Affordability{
  Affordable,
  Pricey,
  Luxurious,
}

enum Complexity{
  Challenging,
  Simple,
  Hard,
}
class Category {
  final id;
  final title;
  final Color color;

  Category({this.id, this.title, this.color});
}

class Meal {
  final id;
  final List categories;
  final title;
  final affordability;
  final complexity;
  final imageUrl;
  final duration;
  final List steps;
  final bool isGlutenFree;
  final bool isVegan;
  final bool isVegetarian;
  final bool isLactoseFree;
  final List ingredients;
  Meal( 
      {this.id,this.ingredients,
      this.categories,
      this.title,
      this.affordability,
      this.complexity,
      this.imageUrl,
      this.duration,
      this.steps,
      this.isGlutenFree,
      this.isVegan,
      this.isVegetarian,
      this.isLactoseFree});
}
