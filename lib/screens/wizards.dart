import 'package:flutter/material.dart';
import 'package:witchcraft/widgets/wizardslist.dart';

class Wizards extends StatelessWidget {
   static String routeName = "./wizards";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          'Dark Practitioners',
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
                image: AssetImage("assets/images/background/bg5.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          WizardsList(),
      ],)
    );
  }
}