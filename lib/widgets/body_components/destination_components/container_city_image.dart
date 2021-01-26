import 'package:flutter/material.dart';
import 'package:travelgram/screens/hotel_screen.dart';

import '../../../models/destination_model.dart';

class ContainerCityImage extends StatelessWidget {
  final Destination destination;
  ContainerCityImage({this.destination});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0.0, 2.0),
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Stack(
        children: <Widget>[
          Hero(
            tag: destination.imageUrl,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image(
                height: 180.0,
                width: 180.0,
                image: destination.imageUrl != ""
                    ? NetworkImage(destination.imageUrl)
                    : NetworkImage(
                        'https://cdn.pixabay.com/photo/2015/02/24/15/41/dog-647528_1280.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: 10.0,
            bottom: 10.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  destination.city,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.2,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.black),
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        size: 10.0,
                        color: Colors.white,
                      ),
                      SizedBox(width: 5.0),
                      Text(
                        destination.country,
                        softWrap: true,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
