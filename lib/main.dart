import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'screens/home.dart';

Future main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(
    // ignore: prefer_const_constructors
    MaterialApp(
      title: "Sistem saúde",
      debugShowCheckedModeBanner: false,
      // ignore: prefer_const_constructors
      home: Home(),
    ),
  );
}
