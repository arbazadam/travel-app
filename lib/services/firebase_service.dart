import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

import 'package:travelgram/models/activity_model.dart';

import 'package:travelgram/models/destination_model.dart';
import 'package:travelgram/models/hotel_model.dart';

class FirebaseService {
  static final firestoreInstance = FirebaseFirestore.instance;
  final firebaseStorageInstance = FirebaseStorage.instance;
  List<Activity> activities = [];
  Future<List<Destination>> readDataFromFirestore() async {
    final destinationData =
        await firestoreInstance.collection('destination').get();

    return destinationData.docs.map((element) {
      List<Activity> activitiesList = [];
      element.reference
          .collection('activity')
          .get()
          .then((activities) => activities.docs.forEach((singleActivity) {
                activitiesList.add(Activity.fromJSON(singleActivity.data()));
              }));

      return Destination.fromJSON(element.data(), activitiesList);
    }).toList();
  }

  static Future<List<Hotel>> getFeaturedHotels() async {
    final hotelsList = await firestoreInstance
        .collection('hotels')
        .where('isFeatured', isEqualTo: true)
        .get();
    return hotelsList.docs.map((element) {
      return Hotel.fromJSON(element.data());
    }).toList();
  }

  Future<List<Hotel>> getHotelsByCityName(String name) async {
    final hotelsList = await firestoreInstance
        .collection('hotels')
        .where('city', isEqualTo: name)
        .get();
    return hotelsList.docs.map((element) {
      return Hotel.fromJSON(element.data());
    }).toList();
  }
}
