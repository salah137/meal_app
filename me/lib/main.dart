import 'package:flutter/material.dart';
import 'models/category.dart';
import 'Screens/HomeScreen.dart';
import 'Screens/CategorieItemes.dart';
import 'Screens/FAvorites.dart';
import 'Latouts/Drawer.dart';
import 'Screens/Settings.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  static List<Meal> favorites = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meal App',
      theme: ThemeData(
        primarySwatch: Colors.red,
        canvasColor: Colors.black
      ),
      themeMode: ThemeMode.dark,
      routes: {
        HomePage.name: (context) => HomePage(),
        CategoryItems.name: (context) => CategoryItems(),
      },
      home: InutialPage(),
    );
  }
}

class InutialPage extends StatefulWidget {
  @override
  _InutialPageState createState() => _InutialPageState();
}

class _InutialPageState extends State<InutialPage> {
  List screens = [HomePage(), FavoritesScreen()];

  int selected = 0;

  slectind(int i) {
    selected = i;
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: screens[selected],
        drawer: MyDrawer(),
    );
  }
}
