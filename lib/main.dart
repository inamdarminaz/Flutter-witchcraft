import 'package:flutter/material.dart';
import 'package:witchcraft/screens/about.dart';
import 'package:witchcraft/screens/charms.dart';
import 'package:witchcraft/screens/creatures.dart';
import 'package:witchcraft/screens/potions.dart';
import 'package:witchcraft/screens/snape.dart';
import 'package:witchcraft/screens/wizards.dart';

import 'screens/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
      routes: {
        Charms.routeName: (ctx) => Charms(),
        Creatures.routeName: (ctx) => Creatures(),
        Potions.routeName: (ctx) => Potions(),
        Wizards.routeName: (ctx) => Wizards(),
        About.routeName: (ctx) => About(),
        Snape.routeName: (ctx) => Snape(),
      },
    );
  }
}
