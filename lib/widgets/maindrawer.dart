import 'package:flutter/material.dart';
import 'package:witchcraft/screens/about.dart';
import 'package:witchcraft/screens/snape.dart';
// import 'package:url_launcher/url_launcher.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        elevation: 10,
        child: Container(
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 26),
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  child: Image.asset(
                    'assets/images/background/wtemp.png',
                    height: 200,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Snape.routeName);
                },
                child: Container(
                  padding: EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.asset(
                        'assets/images/icons/snape.png',
                        height: 30,
                        width: 30,
                      ),
                      Text('    Severus Snape',
                          style: TextStyle(
                            fontFamily: 'Ruthie',
                            fontSize: 27,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
              ),
              //Severus Snape
              
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, About.routeName);
                },
                child: Container(
                  padding: EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Image.asset(
                        'assets/images/icons/about.png',
                        height: 30,
                        width: 30,
                      ),
                      Text(
                        'About Us',
                        style: TextStyle(
                          fontFamily: 'Ruthie',
                          fontSize: 27,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
