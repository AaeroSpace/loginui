// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:loginui/main.dart';
import 'package:loginui/schedule_page.dart';

import 'ForgotPassword1.dart';
import 'SignUp.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              Image.asset('images/Advisiored (7).png'),
              SizedBox(
                height: 40,
              ),
              Text(
                'Welcome Back to Advisiored',
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1.0),
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 40,
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
                      hintStyle: TextStyle(color: Color.fromARGB(255, 50, 74, 113)),
                      contentPadding: EdgeInsets.all(20.0),
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
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Color.fromARGB(255, 50, 74, 113)),
                      contentPadding: EdgeInsets.all(20.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                child: Text('Forgot Password?'),
                style: TextButton.styleFrom(
                  primary: Color.fromRGBO(113, 156, 145, 1.0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ForgotPassword1()),
                  );
                },
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
                      'Log In',
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
                            builder: (context) => const Scheduler()),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    "Don't have an Account?",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  TextButton(
                      child: Text('Sign Up'),
                      style: TextButton.styleFrom(
                        primary: Color.fromRGBO(113, 156, 145, 1.0),
                      ),
                      onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUp()),
                      );
                    },
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    ),
    );
  }
}
