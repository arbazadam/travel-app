import 'package:flutter/material.dart';

import 'models/activity_model.dart';

// Colors that we use in our app
const kPrimaryColor = Color(0x0000000);
const kSecondaryColor = Color(0xBBA12456);
const kTextColor = Color(0xFF3C4046);
const kBackgroundColor = Color(0xFFF9F8FC);

const double kDefaultPadding = 20.0;

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/stmarksbasilica.jpg',
    name: 'St. Mark\'s Basilica',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/images/gondola.jpg',
    name: 'Walking Tour and Gonadola Ride',
    type: 'Sightseeing Tour',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 4,
    price: 210,
  ),
  Activity(
    imageUrl: 'assets/images/murano.jpg',
    name: 'Murano and Burano Tour',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 125,
  ),
];

const API_KEY = 'AIzaSyA5I7aFgZKPFjiq3vJybE39R7p3R7_MDkA';
const signUpUrl =
    'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=$API_KEY';
const loginUrl =
    'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=$API_KEY';
