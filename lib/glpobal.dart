import 'dart:io';

import 'package:flutter/material.dart';

class Global {
  static TextStyle title = TextStyle(
    fontSize: 22,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  );
  static TextStyle subtitle = TextStyle(
    fontSize: 18,
    color: Colors.grey,
  );
  static TextStyle menuText = TextStyle(
    fontSize: 20,
    color: Colors.black,
  );

  static TextStyle pdfText = TextStyle(
      fontSize: 10,
      color: Colors.blueAccent.shade700,
      fontWeight: FontWeight.w500,
  );
  static TextStyle pdfSubText = TextStyle(
    fontSize: 8,
    color: Colors.black,
  );

  static String contactName = "";
  static String contactEmail = "";
  static String contactPhone = "";
  static String contactAdd = "";
  static String contactAdd1 = "";
  static String contactAdd2 = "";
  static File? pic;

  static String carrierObjective = "";
  static String carrierCurrent = "";

  static String DOB = "";
  static String maritalStatus = "";
  static List languages = [];
  static String nationality = "";

  static String courseSave = "";
  static String collageSave = "";
  static String percentageSave = "";
  static String yearSave = "";

  static String companyName = "";
  static String roleinCompany = "";
  static String date1 = "";
  static String date2 = "";
  static String date3 = "";

  static List technical = [];

  static List hobby = [];

  static String projectTitle = "";
  static String roles = "";
  static String technologies = "";
  static String projectDescription = "";

  static List achievements = [];

  static String referanceName = "";
  static String occupation = "";
  static String organization = "";

  static String description = "";
  static String date = "";
  static String city = "";
}
