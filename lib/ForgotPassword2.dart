// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:loginui/login_page.dart';
import 'package:loginui/main.dart';
import 'package:loginui/schedule_page.dart';

class ForgotPassword2 extends StatefulWidget {
  const ForgotPassword2({Key? key}) : super(key: key);

  @override
  State<ForgotPassword2> createState() => _ForgotPassword2State();
}

class _ForgotPassword2State extends State<ForgotPassword2> {
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();


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
                'Create New Password',
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1.0),
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.all(18), //apply padding to all four sides
                child: Text("Enter in New Password                        ",
                  textAlign: TextAlign.left,
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
                    border:
                    Border.all(color: Color.fromARGB(255, 73, 101, 149)),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: TextField(
                    controller: emailController,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Color.fromARGB(255, 50, 74, 113)),
                      contentPadding: EdgeInsets.all(20.0),
                    ),
                    style: TextStyle(
                        color: Color.fromARGB(255, 50, 74, 113)
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(18), //apply padding to all four sides
                child: Text("Enter in New Password Again              ",
                  textAlign: TextAlign.left,
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
                    border:
                    Border.all(color: Color.fromARGB(255, 73, 101, 149)),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Color.fromARGB(255, 50, 74, 113)),
                      contentPadding: EdgeInsets.all(20.0),
                    ),
                    style: TextStyle(
                      color: Color.fromARGB(255, 50, 74, 113),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      backgroundColor: Color(0xFFEFA93A),
                      padding: EdgeInsets.symmetric(horizontal: 45, vertical: 10),
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
                      if(emailController.text == passwordController.text) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Scheduler()),
                        );
                      }else {
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                          insetPadding: EdgeInsets.all(20.0),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(10.0))
                          ),
                          title: Text('Passwords do not match'),
                          ),
                        ); //Show Dialog
                      } //else
                    }, //onPressed
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    );
  } //Widget
} //Class
