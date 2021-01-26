import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:travelgram/models/destination_model.dart';

import 'package:travelgram/widgets/body_components/destination_components/destination_card.dart';

import '../../../constants.dart';

class ListOfDestination extends StatelessWidget {
  final List<Destination> destinations;

  ListOfDestination({this.destinations});

  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: destinations.length,
      itemBuilder: (BuildContext context, int index) {
        Destination destination = destinations[index];
        return ParentContainer(
          destination: destination,
        );
      },
     );
    // return Container(
    //   height: MediaQuery.of(context).size.height,
    //   child: Swiper(
    //     itemWidth: MediaQuery.of(context).size.width,
    //     layout: SwiperLayout.STACK,
    //     itemCount: destinations.length,
    //     itemBuilder: (context, index) => Stack(
    //       children: [
    //         Column(
    //           children: [
    //             ParentContainer(
    //               destination: destinations[index],
    //             )
    //           ],
    //         )
    //       ],
    //     ),
    //   ),
    // );
  }
}
