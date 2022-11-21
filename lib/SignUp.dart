// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:loginui/AboutMe.dart';
import 'package:loginui/login_page.dart';
import 'package:loginui/main.dart';
import 'package:loginui/schedule_page.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController controller1 = new TextEditingController();
  TextEditingController controller2 = new TextEditingController();
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
                'Create Account',
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1.0),
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Image.asset(
                  'images/App Logo (7).png',
                  height: 200,
                  width: 200,
              ),
              SizedBox(
                height: 25,
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
                    decoration: InputDecoration(
                      hintText: 'Name',
                      hintStyle: TextStyle(color: Color.fromRGBO(37, 57, 92, 1.0)),
                      contentPadding: EdgeInsets.all(20.0),
                    ),
                    style: TextStyle(
                      color: Color.fromRGBO(37, 57, 92, 1.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
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
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Color.fromRGBO(37, 57, 92, 1.0)),
                      contentPadding: EdgeInsets.all(20.0),
                    ),
                    style: TextStyle(
                      color: Color.fromRGBO(37, 57, 92, 1.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
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
                    controller: controller1,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Color.fromRGBO(37, 57, 92, 1.0)),
                      contentPadding: EdgeInsets.all(20.0),
                    ),
                    style: TextStyle(
                      color: Color.fromRGBO(37, 57, 92, 1.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
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
                    controller: controller2,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Confirm Password',
                      hintStyle: TextStyle(color: Color.fromRGBO(37, 57, 92, 1.0)),
                      contentPadding: EdgeInsets.all(20.0),
                    ),
                    style: TextStyle(
                      color: Color.fromRGBO(37, 57, 92, 1.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
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
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                      onPressed: () {
                        if(controller1.text == controller2.text) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Aboutme()),
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
                      }
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    'Have an Account?',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  TextButton(
                    child: Text('Log In'),
                    style: TextButton.styleFrom(
                      primary: Color.fromRGBO(113, 156, 145, 1.0),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()),
                      );
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    ),
    );
  }
}
