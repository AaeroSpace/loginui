// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:loginui/login_page.dart';
import 'package:loginui/main.dart';
import 'package:loginui/schedule_page.dart';

import 'ForgotPassword2.dart';

class ForgotPassword1 extends StatefulWidget {
  const ForgotPassword1({Key? key}) : super(key: key);

  @override
  State<ForgotPassword1> createState() => _ForgotPassword1State();
}

class _ForgotPassword1State extends State<ForgotPassword1> {
  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: const BoxConstraints.expand(),
    decoration: const BoxDecoration(
    image: DecorationImage(
    image: AssetImage('images/Background.png'), fit: BoxFit.cover)),
    child: Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                'Forgot Password',
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1.0),
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.all(30), //apply padding to all four sides
                child: Text("We sent you an email! Please check your  inbox for the 6-digit code and enter it below.",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
        ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color.fromARGB(255, 73, 101, 149)),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '123456',
                      hintStyle: TextStyle(color: Color.fromARGB(255, 50, 74, 113)),
                      contentPadding: EdgeInsets.all(20.0),
                    ),
                    style: TextStyle(
                        color: Color.fromARGB(255, 50, 74, 113)
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)
                      ),
                      backgroundColor: Color(0xFFEFA93A),
                      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 12),
                    ),
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ForgotPassword2()),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    ),
    );
  }
}
