import 'package:flutter/cupertino.dart';
import 'package:travelgram/models/destination_model.dart';
import 'package:travelgram/models/hotel_model.dart';
import 'package:travelgram/services/firebase_service.dart';

class DestinationProvider with ChangeNotifier
{
  FirebaseService fs=FirebaseService();
  List<Destination> _listOfDestination=[];

  List<Destination> get destinationlist{
    return [..._listOfDestination];
  }
  void geAllDestinationFromFirestore() async
  {
_listOfDestination=await fs.readDataFromFirestore();
notifyListeners();
  }
  String getImageUrlFromCity(String city)
  {
return _listOfDestination.firstWhere((element) => element.city==city).imageUrl;
  }
  List<Hotel> getHotelFromCity(String city)
  {
    return _listOfDestination.firstWhere((element) => element.city==city).hotels;
  }
}