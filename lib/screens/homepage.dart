import 'package:flutter/material.dart';
import 'package:witchcraft/widgets/maindrawer.dart';

import '../widgets/maingrid.dart';
import '../widgets/albus.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Dark Arts', style: TextStyle(color: Colors.white, fontFamily: 'Harry', fontSize: 40)),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      drawer: MainDrawer(),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background/bg1.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MainGrid(),
              SizedBox(
                height:80,
              ),
              Albus(),
            ],
          )
        ],
      ),
    );
  }
}
