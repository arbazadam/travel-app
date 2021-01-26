import 'package:flutter/material.dart';

import '../../constants.dart';

class CurvedContainer extends StatelessWidget {
  final Size size;
  CurvedContainer({this.size});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 15),
      height: size.height * 0.2 - 27,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/travel_banner.jpg"),
            fit: BoxFit.cover),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(36),
          bottomRight: Radius.circular(36),
        ),
      ),
    );
  }
}
