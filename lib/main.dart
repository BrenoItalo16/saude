import 'package:flutter/material.dart';

import 'screens/home.dart';

void main() {
  runApp(
    // ignore: prefer_const_constructors
    MaterialApp(
      title: "Sistem saúde",
      debugShowCheckedModeBanner: false,
      home: const Home(),
    ),
  );
}
