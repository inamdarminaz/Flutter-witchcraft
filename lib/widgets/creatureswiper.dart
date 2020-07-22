import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import '../datasource/creaturesdatasource.dart';

class CreatureSwiper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Swiper(
        itemBuilder: (context, index) {
          return Card(
            elevation: 10,
            color: Color(0xff464049).withOpacity(0.8),
            shadowColor: Color(0xff212121),
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      CreaturesDataSource.creatures[index]['cimage'],
                      height: 300,
                      width: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                        CreaturesDataSource.creatures[index]['creature'],
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontFamily: 'Harry'),
                      ),
                      SizedBox(
                    height: 10,
                  ),
                  Text(
                    CreaturesDataSource.creatures[index]['description'],
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Raleway'),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: CreaturesDataSource.creatures.length,
        pagination: SwiperPagination(),
        control: SwiperControl(color: Colors.transparent),
      ),
    );
  }
}
