import 'package:contact_list/Homepage.dart';
import 'package:contact_list/Homepage_db.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Contact List",
    home: Homepagedb(),
  ));
}
