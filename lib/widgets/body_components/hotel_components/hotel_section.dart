import 'package:flutter/material.dart';
import 'package:travelgram/models/hotel_model.dart';
import 'package:travelgram/widgets/body_components/destination_components/heading_widget.dart';
import 'package:travelgram/widgets/body_components/hotel_components/hotel_card.dart';

class HotelCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeadingWidget(
          caption: 'Featured Hotels',
        ),
        HotelCard()
      ],
    );
  }
}
