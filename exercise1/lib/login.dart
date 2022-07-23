import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  padding: EdgeInsets.only(top: 100),
                  child: Image(
                    image: AssetImage("images/loginlogo.png"),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  child: TextField(
                    style: TextStyle(
                      color: Color(0xFF7D9D9C),
                    ),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      filled: true,
                      fillColor: Color(0xFFE4DCCF),
                      prefixIconColor: Color(0xFF7D9D9C),
                      hintText: 'Email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: TextField(
                    style: TextStyle(
                      color: Color(0xFF7D9D9C),
                    ),
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.key),
                      filled: true,
                      fillColor: Color(0xFFE4DCCF),
                      prefixIconColor: Color(0xFF7D9D9C),
                      hintText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/");
                  },
                  child: Image.asset('images/biglogin.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
