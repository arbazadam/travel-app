import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:travelgram/constants.dart';

class AuthWidget extends StatefulWidget {
  @override
  _AuthWidgetState createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  
  @override
  Widget build(BuildContext context) {
   
    final _formKey = GlobalKey<FormState>();
    final height = MediaQuery.of(context).size.height / 3;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Card(
              elevation: 6,
              child: Container(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            
                            decoration: InputDecoration(labelText: 'Email'),
                          ),
                          TextFormField(
                           
                            obscureText: true,
                            decoration: InputDecoration(labelText: 'Password'),
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration:
                                InputDecoration(labelText: 'Confirm password'),
                          ),
                          SizedBox(height: 10),
                          RaisedButton(
                              onPressed: () {
                                submitForm('arbaz@121.com', 'arbaz6561');
                              },
                              child: Text('Sign Up'))
                        ],
                      ),
                    ),
                  ),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                width: 350,
                height: height,
                decoration: BoxDecoration(),
              )),
        ),
      ],
    );
  }

  void submitForm(String email, String password) async {
    var body = {
      'email': email,
      'password': password,
      'returnSecureToken': true
    };
    try {
      print(signUpUrl);
      var response = await http.post(signUpUrl, body: body);
      print(response);
    } catch (e) {
      print(e);
    }
  }
}
