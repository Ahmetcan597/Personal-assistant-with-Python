import 'package:exercise1/addcoach.dart';
import 'package:exercise1/appointment.dart';
import 'package:exercise1/login.dart';
import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/second': (context) => LoginScreen(),
        '/third': (context) => AddCoachScreen(),
        '/fourth': (context) => Appointment(),
      },
    );
  }
}
