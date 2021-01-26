import 'package:flutter/material.dart';
import 'package:travelgram/widgets/header_components/custom_search.dart';

class CustomNavigationBar extends StatefulWidget {
  @override
  _CustomNavigationBarState createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int selectedIndex = 0;
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          //  boxShadow: [
          //   BoxShadow(
          //      offset: Offset(0, 10),
          //      blurRadius: 50,
          //     color: Colors.blue.withOpacity(0.23),
          //   ),
          //  ],

          border: Border.all(color: Colors.blue, width: 0.3),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(36),
            topRight: Radius.circular(36),
          )),
      child: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        backgroundColor: Colors.transparent,
        elevation: 0,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey,
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
              icon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    showSearch(context: context, delegate: CustomSearch());
                  }),
              title: SizedBox.shrink()),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_pizza), title: SizedBox.shrink()),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 12,
                backgroundImage: NetworkImage(
                    'https://scontent.ffjr1-2.fna.fbcdn.net/v/t1.0-9/123438890_3528277130592480_7417633538517550040_o.jpg?_nc_cat=101&ccb=2&_nc_sid=e3f864&_nc_ohc=RiXtQuepRYUAX-xSqTq&_nc_ht=scontent.ffjr1-2.fna&oh=f7825a2009ed3d1e2c44800c5f33be72&oe=60198312'),
              ),
              title: SizedBox.shrink())
        ],
      ),
    );
  }
}
