import 'package:flutter/material.dart';
import "../Screens/FAvorites.dart";
import '../Screens/HomeScreen.dart';
import '../Screens/Settings.dart';
class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(10),
            onTap: () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (_) {
                  return FavoritesScreen();
                },
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
              ),
              alignment: Alignment.center,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Favorite",
                    style: TextStyle(fontSize: 30, fontFamily: "Schyler"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.favorite)
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          InkWell(
            onTap: () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (_) {
                  return HomePage();
                },
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
              ),
              
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home,
                    size: 50,
                  ),
                  Text(
                    "Home Screen",
                    style: TextStyle(fontSize: 30, fontFamily: "Schyler"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) {
                  return SettingsScreen();
                },
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
              ),
              
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.settings,
                    size: 50,
                  ),
                  Text(
                    "Settings",
                    style: TextStyle(fontSize: 30, fontFamily: "Schyler"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
