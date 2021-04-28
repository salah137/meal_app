import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stings"),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Text("Dark theme"),
              Switch(
                value: Settings.darkTheme,
                onChanged: (bool v) {
                  setState(
                    () {
                      Settings.darkTheme = v;
                    },
                  );
                },
              ),
            ],
          ),
          Row(
            children: [
              Text("Show Lactose Foods"),
              Switch(
                value: Settings.showLactous,
                onChanged: (bool v) {
                  setState(
                    () {
                      Settings.showLactous = v;
                    },
                  );
                },
              ),
            ],
          ),
          Row(
            children: [
              Text("Show Vegan Foods"),
              Switch(
                value: Settings.showVegan,
                onChanged: (bool v) {
                  setState(
                    () {
                      Settings.showVegan = v;
                    },
                  );
                },
              ),
            ],
          ),
          Row(
            children: [
              Text("Show Gluten  Foods"),
              Switch(
                value: Settings.showGluten,
                onChanged: (bool v) {
                  setState(
                    () {
                      Settings.showGluten = v;
                    },
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Settings {
  static bool showLactous = true;
  static bool showGluten = true;
  static bool showVegan = true;
  static bool darkTheme = true;
  static Color themeColor =
      darkTheme ? Colors.black12 : Color.fromRGBO(254, 252, 174, 1.0);
}
