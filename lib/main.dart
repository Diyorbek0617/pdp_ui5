import 'package:flutter/material.dart';
import 'package:pdp_ui5/pages/home_page.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
    home: HomePage(),
    routes: {
        HomePage.id:(context)=>HomePage(),
    },
    ),
    );
  }