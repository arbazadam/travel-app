import 'package:travelgram/models/hotel_model.dart';

import 'activity_model.dart';

class Destination {
  final String imageUrl;
  final String city;
  final String country;
  final String description;
  final List<Activity> activities;
  final List<Hotel> hotels;

  Destination({
    this.imageUrl,
    this.city,
    this.country,
    this.description,
    this.activities,
    this.hotels
  });

  factory Destination.fromJSON(Map<String, dynamic> data,List<Activity> activity) {
    return Destination(
        imageUrl: data['imageUrl'],
        city: data['city'],
        country: data['country'],
        description: data['description'],
        activities: activity,
        //hotels: hotels
        );
  }
}
