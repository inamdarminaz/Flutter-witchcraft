import 'package:flutter/material.dart';
import '../datasource/charmsdatasource.dart';

class CharmsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => Container(
        padding: EdgeInsets.all(15),
        child: Container(
          color: Colors.black.withOpacity(0.72),
          padding: EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              Text(CharmsDataSource.charms[index]['incantation'],
                  style: TextStyle(
                      color: Colors.white, fontSize: 33, fontFamily: 'Harry')),
              Text(CharmsDataSource.charms[index]['spell'],
                  style: TextStyle(
                      color: Colors.white, fontSize: 20, fontFamily: 'Ruthie')),
              SizedBox(
                height: 4,
              ),
              Text(CharmsDataSource.charms[index]['effect'],
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontFamily: 'Raleway')),
            ],
          ),
        ),
      ),
      itemCount: CharmsDataSource.charms.length,
    );
  }
}
