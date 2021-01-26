import 'package:flutter/material.dart';
import 'package:travelgram/models/destination_model.dart';
import 'package:travelgram/screens/hotel_screen.dart';

import 'package:travelgram/widgets/body_components/destination_components/back_activity.dart';
import 'package:travelgram/widgets/body_components/destination_components/container_city_image.dart';

class ParentContainer extends StatelessWidget {
  final Destination destination;

  ParentContainer({this.destination});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        //Navigator.of(context).pushNamed(HotelScreen.routeName,arguments: destination.city);
      },
          child: Container(
        child: Container(
          margin: EdgeInsets.all(10.0),
          width: 210.0,
          child: Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              Positioned(
                bottom: 15.0,
                child: BackActivity(
                  destination: destination,
                ),
              ),
              ContainerCityImage(destination: destination)
            ],
          ),
        ),
      ),
    );
  }
}
