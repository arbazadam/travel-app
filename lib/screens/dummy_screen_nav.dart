import 'package:flutter/material.dart';

class DummyNavScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('screen circle avatar'),
        ),
        body: SwitchListTile(
          onChanged: (a) {},
          title: Text('hie'),
        ));
  }
}
