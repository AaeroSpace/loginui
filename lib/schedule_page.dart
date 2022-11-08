// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_final_fields, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:loginui/Fall22done.dart';
import 'package:loginui/filters.dart';
import 'login_page.dart';

class Scheduler extends StatefulWidget {
  const Scheduler({Key? key}) : super(key: key);

  @override
  State<Scheduler> createState() => _SchedulerPage();
}

class _SchedulerPage extends State<Scheduler> {
  Color _elevatedButtonColor = Color.fromRGBO(233, 233, 233, 1.0);
  Color _elevatedButtonColor2 = Color.fromRGBO(233, 233, 233, 1.0);
  Color _elevatedButtonColor3 = Color.fromRGBO(233, 233, 233, 1.0);
  Color _elevatedButtonColor4 = Color.fromRGBO(233, 233, 233, 1.0);
  Color _elevatedButtonColor5 = Color.fromRGBO(233, 233, 233, 1.0);

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
                    color: Color.fromRGBO(37, 57, 92, 1.0),
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
                      content: Text('Intro to Computer Science for CS Majors \n'
                          '\n9:30am - 10:30am  M W F Lecture    Shark, E '
                          '\n2:30pm - 5:30pm   F  LAB   Shark, E '
                          '\n \n      103 Turead Hall'
                          '\n \nThis course helps you to develop solutions to problems using an object-oriented approach'
                          'and emphasizes the concepts of recursion; dynamic memory; data structures '
                          '(lists, stacks, queues, trees); exception handling.'),
                      actions: [
                        TextButton(
                          child: Text('Add'),
                          onPressed: () => Navigator.pop(context, true),
                        ),
                        TextButton(
                          child: Text('Done'),
                          onPressed: () => Navigator.pop(context, false),
                        ),
                      ],
                    ),
                  ).then((value) => {
                        //when dialog is closed enter this function
                        if (value == true)
                          {
                            //if dialog return true you change the button color
                            setState(() {
                              _elevatedButtonColor = Colors.yellow;
                            })
                          }
                      });
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
                    color: Color.fromRGBO(37, 57, 92, 1.0),
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('MATH 1551'),
                      content: Text('Analytic Geometry and Canculus II \n'
                          '\n10:30a - 11:20a   T W TH F Lecture     Walker, D '
                          '\n \n     ! Only Avalable on T W TH F'
                          '\n \nThis course shows you techniques of integration; '
                          'applications of the integral; parametric equations, '
                          'polar coordinates, sequences and infinite series.'),
                      actions: [
                        TextButton(
                          child: Text('Add'),
                          onPressed: () => Navigator.pop(context, true),
                        ),
                        TextButton(
                          child: Text('Done'),
                          onPressed: () => Navigator.pop(context, false),
                        ),
                      ],
                    ),
                  ).then((value) => {
                        //when dialog is closed enter this function
                        if (value == true)
                          {
                            //if dialog return true you change the button color
                            setState(() {
                              _elevatedButtonColor2 = Colors.yellow;
                            })
                          }
                      });
                },
                style: ElevatedButton.styleFrom(
                  primary: _elevatedButtonColor2,
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
                    color: Color.fromRGBO(37, 57, 92, 1.0),
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
                      actions: [
                        TextButton(
                          child: Text('Add'),
                          onPressed: () => Navigator.pop(context, true),
                        ),
                        TextButton(
                          child: Text('Done'),
                          onPressed: () => Navigator.pop(context, false),
                        ),
                      ],
                    ),
                  ).then((value) => {
                        //when dialog is closed enter this function
                        if (value == true)
                          {
                            //if dialog return true you change the button color
                            setState(() {
                              _elevatedButtonColor3 = Colors.yellow;
                            })
                          }
                      });
                },
                style: ElevatedButton.styleFrom(
                  primary: _elevatedButtonColor3,
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
                    color: Color.fromRGBO(37, 57, 92, 1.0),
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
                      actions: [
                        TextButton(
                          child: Text('Add'),
                          onPressed: () => Navigator.pop(context, true),
                        ),
                        TextButton(
                          child: Text('Done'),
                          onPressed: () => Navigator.pop(context, false),
                        ),
                      ],
                    ),
                  ).then((value) => {
                        //when dialog is closed enter this function
                        if (value == true)
                          {
                            //if dialog return true you change the button color
                            setState(() {
                              _elevatedButtonColor4 = Colors.yellow;
                            })
                          }
                      });
                },
                style: ElevatedButton.styleFrom(
                  primary: _elevatedButtonColor4,
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
                    color: Color.fromRGBO(37, 57, 92, 1.0),
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
                      actions: [
                        TextButton(
                            child: Text('Add'),
                            onPressed: () => Navigator.pop(context, true)),
                        TextButton(
                          child: Text('Done'),
                          onPressed: () => Navigator.pop(context, false),
                        ),
                      ],
                    ),
                  ).then((value) => {
                        //when dialog is closed enter this function
                        if (value == true)
                          {
                            //if dialog return true you change the button color
                            setState(() {
                              _elevatedButtonColor5 = Colors.yellow;
                            })
                          }
                      });
                },
                style: ElevatedButton.styleFrom(
                  primary: _elevatedButtonColor5,
                  side: BorderSide(
                      width: 3, color: Color.fromRGBO(37, 57, 92, 1.0)),
                  shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(20)),
                  padding: EdgeInsets.symmetric(horizontal: 140, vertical: 15),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              ElevatedButton(
                child: Text(
                  'Advise Me',
                  style: TextStyle(
                    color: Color.fromRGBO(37, 57, 92, 1.0),
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Semesters'),
                      content: Text('Which semester would you like to view?'),
                      actions: [
                        TextButton(
                          child: Text(
                            '1',
                            style: TextStyle(
                              color: Color.fromRGBO(37, 57, 92, 1.0),
                              fontSize: 20,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Fall22()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            side: BorderSide(
                                width: 3,
                                color: Color.fromRGBO(37, 57, 92, 1.0)),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                        TextButton(
                          child: Text(
                            '2',
                            style: TextStyle(
                              color: Color.fromRGBO(37, 57, 92, 1.0),
                              fontSize: 20,
                            ),
                          ),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            side: BorderSide(
                                width: 3,
                                color: Color.fromRGBO(37, 57, 92, 1.0)),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(233, 233, 233, 1.0),
                  side: BorderSide(
                      width: 3, color: Color.fromRGBO(37, 57, 92, 1.0)),
                  shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(20)),
                  padding: EdgeInsets.symmetric(horizontal: 140, vertical: 15),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Filters()),
                  );
                },
                child: Text(
                  'Filters',
                  style: TextStyle(
                    color: Color.fromRGBO(37, 57, 92, 1.0),
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
