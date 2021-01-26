import 'package:flutter/material.dart';
import 'package:travelgram/models/destination_model.dart';

import 'package:travelgram/widgets/body_components/destination_components/list_of_destinations.dart';
import 'heading_widget.dart';

class DestinationCarousel extends StatelessWidget {
  final List<Destination> destination;
  DestinationCarousel({this.destination});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        HeadingWidget(caption: 'Top Destinations'),
        Container(height: 300.0, child: ListOfDestination(destinations: destination)),
      ],
    );
  }
}
