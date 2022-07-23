import 'package:flutter/material.dart';

class AddCoachScreen extends StatefulWidget {
  const AddCoachScreen({Key? key}) : super(key: key);

  @override
  State<AddCoachScreen> createState() => _AddCoachScreenState();
}

class _AddCoachScreenState extends State<AddCoachScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0EBE3),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: CircleAvatar(
                    radius: 110,
                    backgroundImage: AssetImage("images/profile.png"),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  child: TextField(
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 27,
                      color: Color(0xFF7D9D9C),
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFE4DCCF),
                      hintText: 'Coach Name',
                      hintStyle:
                          TextStyle(fontSize: 27, color: Color(0xFF7D9D9C)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide.none),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: TextField(
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 25,
                      color: Color(0xFF7D9D9C),
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFE4DCCF),
                      hintText: 'Small Explanation',
                      hintStyle:
                          TextStyle(fontSize: 25, color: Color(0xFF7D9D9C)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 20),
                  child: TextField(
                    maxLines: 7,
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF7D9D9C),
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFE4DCCF),
                      hintText: 'Big Explanation',
                      hintStyle:
                          TextStyle(fontSize: 18, color: Color(0xFF7D9D9C)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                    ),
                  ),
                ),
              ),
              Container(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/");
                  },
                  child: Image.asset('images/addcoachbutton.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
