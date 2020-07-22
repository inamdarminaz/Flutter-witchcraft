import 'package:flutter/material.dart';
import 'package:witchcraft/widgets/creatureswiper.dart';

class Creatures extends StatelessWidget {
   static String routeName = "./creatures";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          'Dark Creatures',
          style: TextStyle(
            fontFamily: 'Harry',
            fontSize: 35,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Stack(children: <Widget>[
        Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background/bg3.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          CreatureSwiper(),
      ],)
    );
  }
}