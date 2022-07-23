import 'package:exercise1/login.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0EBE3),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 25),
            child: Image(
              image: AssetImage("images/logo.png"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/second");
              },
              child: Image.asset('images/login.png'),
            ),
          ),
          Container(
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/third");
              },
              child: Image.asset('images/addcoachbutton.png'),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                CoachList(),
                CoachList(),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
          ),
        ],
      ),
    );
  }
}

class CoachList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/fourth");
      },
      child: Stack(
        children: [
          Image(
            image: AssetImage('images/coach.png'),
          ),
          Positioned(
            top: 12,
            left: 20,
            child: CircleAvatar(
              radius: 47,
              backgroundImage: AssetImage("images/download.jpg"),
            ),
          ),
          Positioned(
            top: 15,
            left: 115,
            child: Text(
              "Coach Name",
              style: TextStyle(fontSize: 25),
            ),
          ),
          Positioned(
            top: 45,
            left: 118,
            child: SizedBox(
              width: 250,
              height: 200,
              child: Text(
                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor",
                style: TextStyle(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
