import 'package:flutter/material.dart';

class TravelPlaceCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Card(
              elevation: 10,
              shape: RoundedRectangleBorder(),
              child: Container(
                child: ClipRRect(
                  child: Image.network(
                      'https://cdn.pixabay.com/photo/2018/05/09/01/00/greece-3384386_1280.jpg'),
                ),
                height: 150,
              )),
        ],
      ),
    );
  }
}
