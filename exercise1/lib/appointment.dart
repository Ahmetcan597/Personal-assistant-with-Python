import 'package:flutter/material.dart';

class Appointment extends StatefulWidget {
  const Appointment({Key? key}) : super(key: key);

  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
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
                    radius: 70,
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
                  padding: EdgeInsets.only(left: 30, right: 30, bottom: 20),
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
                  child: Image.asset('images/make.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//yarın yapılacaklar şöyle
//1 firebaseden logini ayarlican ve login butonunu silip add coachı koy
//add coach dediğinde isim yazılar kolay zaten sadece resmi ayarla izin falan isteme olayınıda yapmanl azım
//veri çekme işini yapıcan coach nami
//birde login ekranındaki coachları ayarlican
//randevuyu siktiret
