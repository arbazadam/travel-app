import 'package:flutter/material.dart';
import 'package:travelgram/widgets/trash/travel_place_card.dart';

class GridViewPlaces extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.all(10.0),
      itemCount: 7,
      itemBuilder: (ctx, i) => TravelPlaceCard(),
    );
  }
}
