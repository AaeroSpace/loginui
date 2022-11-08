// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:loginui/main.dart';
import 'package:loginui/schedule_page.dart';

class Fall22 extends StatefulWidget {
  const Fall22({Key? key}) : super(key: key);

  @override
  State<Fall22> createState() => _Fall22Page();
}

class _Fall22Page extends State<Fall22> {
  Color _elevatedButtonColor = Color.fromRGBO(113, 156, 145, 1.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fall 2022'),
        backgroundColor: Color.fromRGBO(37, 57, 92, 1.0),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              ElevatedButton(
                child: Text(
                  'CSC 1351',
                  style: TextStyle(
                    color: Color.fromRGBO(233, 233, 233, 1.0),
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      insetPadding: EdgeInsets.all(8.0),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      title: Text('CSC 1351'),
                      content: Text(
                          'Intro to Computer Science for CS Majors \n \n9:30am - 10:30am  M W F Lecture    Shark, E \n stuff stuff stuff stuff stuff stuff stuff stuff stuff stuff stuff stuff stuff stuff'),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: _elevatedButtonColor,
                  side: BorderSide(
                      width: 3, color: Color.fromRGBO(37, 57, 92, 1.0)),
                  shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(20)),
                  padding: EdgeInsets.symmetric(horizontal: 140, vertical: 15),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                child: Text(
                  'MATH 1551',
                  style: TextStyle(
                    color: Color.fromRGBO(233, 233, 233, 1.0),
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('MATH 1551'),
                      content: Text(
                          'Stuff \n \n \n \n stuff stuff stuff stuff stuff stuff stuff stuff stuff stuff stuff stuff stuff stuff stuff'),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: _elevatedButtonColor,
                  side: BorderSide(
                      width: 3, color: Color.fromRGBO(37, 57, 92, 1.0)),
                  shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(20)),
                  padding: EdgeInsets.symmetric(horizontal: 140, vertical: 15),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                child: Text(
                  'ENGL 1001',
                  style: TextStyle(
                    color: Color.fromRGBO(233, 233, 233, 1.0),
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('ENGL 1001'),
                      content: Text(
                          'Stuff \n \n \n \n stuff stuff stuff stuff stuff stuff stuff stuff stuff stuff stuff stuff stuff stuff stuff'),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: _elevatedButtonColor,
                  side: BorderSide(
                      width: 3, color: Color.fromRGBO(37, 57, 92, 1.0)),
                  shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(20)),
                  padding: EdgeInsets.symmetric(horizontal: 140, vertical: 15),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                child: Text(
                  'ASTR 1101',
                  style: TextStyle(
                    color: Color.fromRGBO(233, 233, 233, 1.0),
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('MATH 1551'),
                      content: Text(
                          'Stuff \n \n \n \n stuff stuff stuff stuff stuff stuff stuff stuff stuff stuff stuff stuff stuff stuff stuff'),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: _elevatedButtonColor,
                  side: BorderSide(
                      width: 3, color: Color.fromRGBO(37, 57, 92, 1.0)),
                  shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(20)),
                  padding: EdgeInsets.symmetric(horizontal: 140, vertical: 15),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                child: Text(
                  'ASTR 1108',
                  style: TextStyle(
                    color: Color.fromRGBO(233, 233, 233, 1.0),
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('ASTR 1108'),
                      content: Text(
                          'Stuff \n \n \n \n stuff stuff stuff stuff stuff stuff stuff stuff stuff stuff stuff stuff stuff stuff stuff'),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: _elevatedButtonColor,
                  side: BorderSide(
                      width: 3, color: Color.fromRGBO(37, 57, 92, 1.0)),
                  shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(20)),
                  padding: EdgeInsets.symmetric(horizontal: 140, vertical: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
