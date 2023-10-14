import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Homescreen/Home.dart';
import 'package:flutter_application_1/screens/detailScreen/detailscreen.dart';
import 'package:flutter_application_1/screens/login.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Ensure that widgets are initialized.
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyCDmh785JsX5QNUWQgtD_LtArzUjfdj1e4",
      appId: "1:691405081034:android:d08f44c7171dcc96a1e733",
      messagingSenderId: "691405081034",
      projectId: "e-commerapp-66e3d",
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          color: Colors.white, //<-- SEE HERE
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,

      home: HomeScreen(), // Replace with your home page widget.
    );
  }
}
