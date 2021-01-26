import 'package:flutter/material.dart';
import 'package:travelgram/models/hotel_model.dart';
import 'package:travelgram/services/firebase_service.dart';

class HotelProvider with ChangeNotifier {
  FirebaseService fs = FirebaseService();
  Future<List<Hotel>> getHotelsByCityName(String name) async {
    notifyListeners();
    return fs.getHotelsByCityName(name);
  }
}
