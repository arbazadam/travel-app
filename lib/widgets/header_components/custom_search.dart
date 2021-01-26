import 'package:flutter/material.dart';

class CustomSearch extends SearchDelegate {
  String selectedResult;
  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
        icon: Icon(Icons.close),
        onPressed: () {
          query = "";
        },
      )
    ];
    throw UnimplementedError();
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Column(
      children: [Text('Done')],
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView(children: [
      ListTile(title: Text('Arbaz')),
      ListTile(title: Text('Arbaz')),
      ListTile(title: Text('Arbaz'))
    ]);
  }
}
