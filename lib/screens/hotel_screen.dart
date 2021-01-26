import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travelgram/providers/destination_provider.dart';

class HotelScreen extends StatelessWidget {
  static final routeName = '/city-image';
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<DestinationProvider>(context);
    final cityName = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [IconButton(icon: Icon(Icons.share), onPressed: null)],
      ),
      body: ListView.builder(
        itemCount: provider.getHotelFromCity(cityName).length,
        itemBuilder: (context, index) => Container(
          height: 300,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      provider.getHotelFromCity(cityName)[index].imageUrl))),
        ),
      ),
    );
  }
}
