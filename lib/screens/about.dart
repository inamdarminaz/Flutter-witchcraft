import 'package:flutter/material.dart';

class About extends StatelessWidget {
  static String routeName = './about';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('About',
            style: TextStyle(
                color: Colors.white, fontFamily: 'Harry', fontSize: 40)),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
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
        Center(
          child: Container(
            padding: EdgeInsets.all(30),
            margin: EdgeInsets.all(10),
            color: Colors.black87,
            height: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('Hey there,',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Ruthie',
                      fontSize: 35,
                    )),
                SizedBox(
                  height: 10,
                ),
                Text(
                    ' This app solely developed for fun and has no intentions to infringe copyrights.All the credits for images and fonts goes to the respective artists.',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Ruthie',
                        fontSize: 27)),
                SizedBox(height: 15),
                Text('- Minaz Inamdar,',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Ruthie',
                        fontSize: 25)),
                Text('Developer',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Ruthie',
                        fontSize: 22)),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
