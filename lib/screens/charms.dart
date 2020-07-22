import 'package:flutter/material.dart';
import 'package:witchcraft/widgets/charmscard.dart';

class Charms extends StatelessWidget {
  static String routeName = "./charms";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          'Dark Charms',
          style: TextStyle(
            fontFamily: 'Harry',
            fontSize: 35,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background/bg2.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          CharmsCard(),
        ],
      ),
    );
  }
}
