import 'package:flutter/material.dart';
import 'package:untitled1/Referances.dart';
import 'package:untitled1/Technical.dart';
import 'package:untitled1/achivements.dart';
import 'package:untitled1/contact.dart';
import 'package:untitled1/declaration.dart';
import 'package:untitled1/education.dart';
import 'package:untitled1/experience.dart';
import 'package:untitled1/interest.dart';
import 'package:untitled1/p1.dart';
import 'package:untitled1/pdf.dart';
import 'package:untitled1/personal.dart';
import 'carrier.dart';
import 'homepage.dart';
import 'menupage.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/' : (context) => HomePage(),
      'menu' : (context) => menuPage(),
      'con' : (context) => contact(),
      'carri' : (context) => carrier(),
      'persnol' : (context) => details(),
      'edu' : (context) => education(),
      'exp' : (context) => experience(),
      'skill' : (context) => Skills(),
      'hoby' : (context) => Hobbies(),
      'pro' : (context) => project(),
      'achieve' : (context) => achievements(),
      'refer' : (context) => reference(),
      'decla' : (context) => declaration(),
        'pdf' : (context) => PDF(),
    }
  ));
}

