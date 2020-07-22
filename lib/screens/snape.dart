import 'package:flutter/material.dart';

class Snape extends StatelessWidget {
  static String routeName = './snape';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Severus Snape',
            style: TextStyle(
                color: Colors.white, fontFamily: 'Harry', fontSize: 40)),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Stack(children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/wizards/snape.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(15),
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                  'Dumbledore watched her fly away, and as her silvery glow faded he turned back to Snape, and his eyes full of tears.',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Ruthie', fontSize: 27)),
              SizedBox(height: 15),
              Text('"After all this time?"',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Ruthie', fontSize: 30)),
              SizedBox(height: 15),
              Text('"Always", said Snape',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Ruthie', fontSize: 35)),
            ],
          ),
        )
      ]),
    );
  }
}
