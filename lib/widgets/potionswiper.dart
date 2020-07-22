import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import '../datasource/potionsdatasource.dart';

class PotionSwiper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      padding: EdgeInsets.all(15),
      child: Swiper(
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            color: Color(0xff605353).withOpacity(0.8),
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        PotionsDataSource.potions[index]['potion'],
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
                            PotionsDataSource.potions[index]['pimage'],
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,
                          )),
                    ],
                  ),
                  Text(
                    PotionsDataSource.potions[index]['description'],
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
        itemCount: PotionsDataSource.potions.length,
        pagination: SwiperPagination(),
        control: SwiperControl(color: Colors.transparent),
      ),
    );
  }
}
