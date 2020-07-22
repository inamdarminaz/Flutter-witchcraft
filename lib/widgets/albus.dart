import 'package:flutter/material.dart';

class Albus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: Text('"Magic, especially Dark magic... leaves traces."',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Ruthie',
                  fontSize: 25,
                )),
          ),
          SizedBox(
            height: 3,
          ),
          Container(
            child: Text('- Albus Dumbledore',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Ruthie',
                  fontSize: 20,
                )),
          ),
        ],
      ),
    );
  }
}
