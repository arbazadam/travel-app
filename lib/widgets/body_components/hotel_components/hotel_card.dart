import 'package:flutter/material.dart';
import 'package:travelgram/services/firebase_service.dart';

class HotelCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 3;
    return SingleChildScrollView(
          child: FutureBuilder(
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return  ListView.builder(
                shrinkWrap: true,
                itemCount: snapshot.data.length,
                itemBuilder: (context, itemCount) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Card(
                      elevation: 5,
                      child: Container(
                          height: 150,
                          child: Image.network(
                            snapshot.data[itemCount].imageUrl,
                            fit: BoxFit.cover,
                          ))),
                ),
              
            );
          }
          return Container();
        },
        future: FirebaseService.getFeaturedHotels(),
      ),
    );
  }
}
