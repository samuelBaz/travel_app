import 'package:flutter/material.dart';
import 'package:travel_app/screens/Intro.dart';
import 'package:travel_app/screens/Splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      initialRoute: 'splash',
      debugShowCheckedModeBanner: false,
      routes: {
        'splash': (_) => Splash(),
        'login': (_) => Intro()
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

    );
  }
}

