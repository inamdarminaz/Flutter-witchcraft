import 'package:flutter/material.dart';
import 'package:witchcraft/screens/creatures.dart';
import 'package:witchcraft/screens/potions.dart';
import 'package:witchcraft/screens/wizards.dart';
import '../screens/charms.dart';

class MainGrid extends StatelessWidget {
  final String title = "";
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, Charms.routeName);
            },
            splashColor: Colors.white,
            child: Container(
              padding: EdgeInsets.all(15),
              height: 110,
              width: 160,
              child: Center(
                child: Text(
                  'Charms',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Harry',
                    fontSize: 23,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.9),
                    Color(0xff4d3c3f).withOpacity(0.7)
                  ],
                  begin: Alignment.bottomRight,
                  end: Alignment.bottomLeft,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          SizedBox(
            width: 7,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, Creatures.routeName);
            },
            splashColor: Colors.white,
            child: Container(
              padding: EdgeInsets.all(15),
              height: 130,
              width: 130,
              child: Center(
                child: Text(
                  'Creatures',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Harry',
                    fontSize: 23,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.9),
                    Color(0xff4d3c3f).withOpacity(0.7)
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          )
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, Potions.routeName);
            },
            splashColor: Colors.white,
            child: Container(
              padding: EdgeInsets.all(15),
              height: 130,
              width: 130,
              child: Center(
                child: Text(
                  'Potions',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Harry',
                    fontSize: 23,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.9),
                    Color(0xff4d3c3f).withOpacity(0.7)
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          SizedBox(
            width: 7,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, Wizards.routeName);
            },
            splashColor: Colors.white,
            child: Container(
              padding: EdgeInsets.all(15),
              height: 120,
              width: 110,
              child: Center(
                child: Text(
                  'Wizards',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Harry',
                    fontSize: 23,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.9),
                    Color(0xff4d3c3f).withOpacity(0.7)
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          )
        ],
      ),
    ]);
  }
}
