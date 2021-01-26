import 'package:flutter/material.dart';
import 'package:travelgram/widgets/body_components/destination_components/place_detail_header_widget.dart';

class PlaceDetailScreen extends StatelessWidget {
  static final routeName = '/place-detail';
  @override
  Widget build(BuildContext context) {
    final imageName = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          actions: [
            IconButton(
                icon: Icon(Icons.search), iconSize: 25, onPressed: () {}),
            IconButton(icon: Icon(Icons.menu), onPressed: (){})
          ],
          elevation: 0.0,
          backgroundColor: Colors.transparent,
        ),
        body: PlaceDetail(imageName: imageName));
  }
}
