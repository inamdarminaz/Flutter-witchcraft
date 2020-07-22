import 'package:flutter/material.dart';
import '../datasource/wizardsdatasource.dart';

class WizardsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Card(
          elevation: 5,
          color: Color(0xff292b22).withOpacity(0.6),
          margin: EdgeInsets.all(10),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      WizardsDataSource.wizards[index]['wizard'],
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontFamily: 'Harry'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        child: Image.asset(
                          WizardsDataSource.wizards[index]['wimage'],
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        )),
                  ],
                ),
                Text(
                  WizardsDataSource.wizards[index]['description'],
                  style: TextStyle(
                      color: Colors.white, fontSize: 15, fontFamily: 'Raleway'),
                ),
              ],
            ),
          ),
        );
      },
      itemCount: WizardsDataSource.wizards.length,
    );
  }
}
