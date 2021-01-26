import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travelgram/models/destination_model.dart';
import 'package:travelgram/providers/destination_provider.dart';
import 'package:travelgram/screens/auth_screen.dart';
import 'package:travelgram/screens/dummy_screen_nav.dart';
import 'package:travelgram/screens/hotel_screen.dart';

import 'package:travelgram/screens/place_detail_screen.dart';
import 'package:travelgram/services/firebase_service.dart';
import 'package:travelgram/widgets/auth_widget.dart';

import 'package:travelgram/widgets/body_components/destination_components/destination_carousel.dart';
import 'package:travelgram/widgets/body_components/hotel_components/hotel_section.dart';
import 'package:travelgram/widgets/bottom-navbar/custom_navigation_widget.dart';
import 'package:travelgram/widgets/header_components/header_search_widget.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => DestinationProvider(),
      child: MaterialApp(
        routes: {
          PlaceDetailScreen.routeName: (ctx) => PlaceDetailScreen(),
          HotelScreen.routeName: (ctx) => HotelScreen()
        },
        theme: ThemeData(),
        debugShowCheckedModeBanner: false,
        home: MyApp(),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return FutureBuilder(
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return BaseWidget(size: size);
          } else {
            return CircularProgressIndicator();
          }
        },
        future: _initialization);
  }
}

class BaseWidget extends StatefulWidget {
  BaseWidget({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  _BaseWidgetState createState() => _BaseWidgetState();
}

class _BaseWidgetState extends State<BaseWidget> {

 void initState()
  {
FirebaseService.getFeaturedHotels();
  }
  int navIndex = 0;
  final listOfWidgets = [DummyNavScreen()];
  @override
  Widget build(BuildContext context) {
    print('build called');
    final providerData =
        Provider.of<DestinationProvider>(context, listen: false);
    providerData.geAllDestinationFromFirestore();
    return Scaffold(
        bottomNavigationBar: CustomNavigationBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              HeaderWithSearchBox(
                size: widget.size,
              ),
              DestinationCarousel(
                destination: providerData.destinationlist,
              ),
              // FutureBuilder(
              //     future: fd,
              //     builder: (context, snapshot) => snapshot.hasData
              //         ? DestinationCarousel(destination: snapshot.data)
              //         : Text('no Data')),
              SizedBox(height: 10),
              HotelCarousel()
            ],
          ),
        ));
  }
}
