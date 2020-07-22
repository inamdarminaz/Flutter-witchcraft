import 'package:flutter/material.dart';
import 'package:witchcraft/widgets/potionswiper.dart';

class Potions extends StatelessWidget {
  static String routeName = "./potions";
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
                  image: AssetImage("assets/images/background/bg4.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                PotionSwiper(),
                Container(
                  padding: EdgeInsets.all(15),
                  color: Colors.black45,
                  child: Column(
                    children: <Widget>[
                      Text(
                          '"What\'s the difference, Potter, between monkshood and wolfsbane?"',
                          style: TextStyle(
                            fontFamily: 'Ruthie',
                            fontSize: 23,
                            color: Colors.white,
                          )),
                          
                      Text(
                      '-Severus Snape',
                      style: TextStyle(
                        fontFamily: 'Ruthie',
                        fontSize: 23,
                        color: Colors.white,
                      ))
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
