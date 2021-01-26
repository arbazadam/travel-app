import 'package:flutter/material.dart';
import 'package:travelgram/widgets/header_components/curved_container_widget.dart';
import 'package:travelgram/widgets/header_components/search_box_widget.dart';

import '../../constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      // It will cover 20% of our total height
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          CurvedContainer(size: size,),
          SearchBoxWidget()
        ],
      ),
    );
  }
}
