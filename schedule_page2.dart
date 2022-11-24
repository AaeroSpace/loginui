// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_final_fields, prefer_interpolation_to_compose_strings, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_final_fields, prefer_interpolation_to_compose_strings, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginui/Fall22done.dart';
import 'package:loginui/filters.dart';
import 'package:loginui/schedule_page.dart';
import 'login_page.dart';
import 'profile_page.dart';

class Scheduler2 extends StatefulWidget {
  const Scheduler2({Key? key}) : super(key: key);

  @override
  State<Scheduler2> createState() => _Scheduler2Page();
}

class _Scheduler2Page extends State<Scheduler2> {
  Color _elevatedButtonColor = Color.fromRGBO(233, 233, 233, 1.0);
  Color _elevatedButtonColor2 = Color.fromRGBO(233, 233, 233, 1.0);
  Color _elevatedButtonColor3 = Color.fromRGBO(233, 233, 233, 1.0);
  Color _elevatedButtonColor4 = Color.fromRGBO(233, 233, 233, 1.0);
  Color _elevatedButtonColor5 = Color.fromRGBO(233, 233, 233, 1.0);
  bool _hasBeenPressed = false;
  bool _isVisible1 = true;
  bool _isVisible2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        leading: Column(
          children: [
            IconButton(
              icon: Icon(Icons.account_circle_rounded),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilePage()));
              },
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.end,
        ),
        title: Container(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      backgroundColor: Color.fromRGBO(233, 233, 233, 1.0),
                      title: Center(child: Text('View Past Semesters')),
                      actions: [
                        TextButton(
                          child: Text(
                            '1',
                            style: TextStyle(
                              color: Color.fromRGBO(37, 57, 92, 1.0),
                              fontSize: 40,
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
                            backgroundColor: Colors.white,
                            side: BorderSide(
                                width: 3,
                                color: Color.fromRGBO(37, 57, 92, 1.0)),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                        SizedBox(
                          width: 60,
                          height: 80,
                        ),
                        TextButton(
                          child: Text(
                            '2',
                            style: TextStyle(
                              color: Color.fromRGBO(37, 57, 92, 1.0),
                              fontSize: 40,
                            ),
                          ),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            side: BorderSide(
                                width: 3,
                                color: Color.fromRGBO(37, 57, 92, 1.0)),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  );
                },
                child: Text('2/8'),
                style: TextButton.styleFrom(
                    primary: Color.fromRGBO(37, 57, 92, 1.0),
                    backgroundColor: Colors.white,
                    textStyle: TextStyle(
                      height: 1.2,
                      fontSize: 40,
                    ),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    )),
              ),
              Text(
                'Spring 2023',
                style: TextStyle(
                  height: 1.6,
                  fontSize: 40,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Column(
            children: [
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Filters(
                        selectedFunction: (List<String> List) {},
                      ),
                    ),
                  );
                },
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.end,
          ),
        ],
        centerTitle: true,
        backgroundColor: Color.fromRGBO(37, 57, 92, 1.0),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              //Class and Section Header Row
              Row(children: [
                Container(
                  child: Text(
                    'Class',
                    style: TextStyle(
                      color: Color.fromRGBO(37, 57, 92, 1.0),
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  width: 90,
                ),
                Expanded(
                    child: Container(
                  height: 70,
                  width: 25,
                )),
                Container(
                  child: Text(
                    'Section #',
                    style: TextStyle(
                      color: Color.fromRGBO(37, 57, 92, 1.0),
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                    ),
                  ),
                  width: 120,
                )
              ]),
              //CSC 1351 button
              InkWell(
                onTap: () {
                  //Class Information Slider
                  showModalBottomSheet<void>(
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: 500,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(233, 233, 233, 1.0),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 15, 0, 3),
                                child: Text(
                                  'CSC 1351',
                                  style: TextStyle(
                                    color: Color.fromRGBO(37, 57, 92, 1.0),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              Text(
                                'Computer Science II for Majors ',
                                style: TextStyle(
                                  color: Color.fromRGBO(37, 57, 92, 1.0),
                                  fontSize: 17,
                                ),
                              ),
                              const Divider(
                                height: 25,
                                thickness: 3,
                                color: Color.fromARGB(112, 187, 187, 187),
                              ),
                              Row(
                                children: [
                                  Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 0)),
                                  Column(
                                    children: [
                                      //Time Slot
                                      Icon(Icons.access_time_filled),
                                      Text(
                                        '9:00am -\n10:20am',
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(37, 57, 92, 1.0),
                                          fontSize: 16,
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 28, vertical: 0)),
                                  Column(
                                    children: [
                                      //Days Slot
                                      Icon(Icons.calendar_month),
                                      Text(
                                        'M,W,F\n',
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(37, 57, 92, 1.0),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 28, vertical: 0)),
                                  Column(
                                    //Professor Slot
                                    children: [
                                      Icon(Icons.account_circle_outlined),
                                      Text(
                                        'Cooper, Robbie\n',
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(37, 57, 92, 1.0),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const Divider(
                                height: 25,
                                thickness: 3,
                                color: Color.fromARGB(112, 187, 187, 187),
                              ),
                              Row(
                                children: [
                                  Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 0)),
                                  Text(
                                    'Pre-req:',
                                    style: TextStyle(
                                      color: Color.fromRGBO(37, 57, 92, 1.0),
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text('CSC 1350',
                                        style: TextStyle(fontSize: 15)),
                                    style: ElevatedButton.styleFrom(
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      backgroundColor:
                                          Color.fromRGBO(113, 156, 145, 1.0),
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 10),
                                    ),
                                  )
                                ],
                              ),
                              const Divider(
                                height: 25,
                                thickness: 3,
                                color: Color.fromARGB(112, 187, 187, 187),
                              ),
                              Column(
                                children: [
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 50)),
                                  SizedBox(
                                    child: Text(
                                      'This course teaches students how to develop solutions to problems using an object-oriented approach and emphasizes the concepts of recursion; dynamic memory; data structures (lists, stacks, queues, trees); exception handling. ',
                                      style: TextStyle(
                                        color: Color.fromRGBO(37, 57, 92, 1.0),
                                        fontSize: 18,
                                      ),
                                    ),
                                    width: 400,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Container(
                    child: Row(
                      children: [
                        Text(
                          'CSC 1351',
                          style: TextStyle(
                            color: Color.fromRGBO(37, 57, 92, 1.0),
                            fontSize: 24,
                          ),
                        ),
                        Expanded(child: Container()),
                        Text(
                          '1',
                          style: TextStyle(
                            color: Color.fromRGBO(37, 57, 92, 1.0),
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                    height: 60,
                    width: 390,
                    decoration: BoxDecoration(
                      color: _elevatedButtonColor,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 15)),
              ),
              SizedBox(
                height: 11,
              ),
              //Math 1551 button
              InkWell(
                onTap: () {
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: 500,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(233, 233, 233, 1.0),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 15, 0, 3),
                                child: Text(
                                  'Math 1552',
                                  style: TextStyle(
                                    color: Color.fromRGBO(37, 57, 92, 1.0),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              Text(
                                'Computer Science II for Majors ',
                                style: TextStyle(
                                  color: Color.fromRGBO(37, 57, 92, 1.0),
                                  fontSize: 17,
                                ),
                              ),
                              const Divider(
                                height: 25,
                                thickness: 3,
                                color: Color.fromARGB(112, 187, 187, 187),
                              ),
                              Row(
                                children: [
                                  Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 0)),
                                  Column(
                                    children: [
                                      //Time Slot
                                      Icon(Icons.access_time_filled),
                                      Text(
                                        '10:30am -\n11:20am',
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(37, 57, 92, 1.0),
                                          fontSize: 16,
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 25, vertical: 0)),
                                  Column(
                                    children: [
                                      //Days Slot
                                      Icon(Icons.calendar_month),
                                      Text(
                                        'M,T,W,TH\n',
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(37, 57, 92, 1.0),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 25, vertical: 0)),
                                  Column(
                                    //Professor Slot
                                    children: [
                                      Icon(Icons.account_circle_outlined),
                                      Text(
                                        'White, Pearl\n',
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(37, 57, 92, 1.0),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const Divider(
                                height: 25,
                                thickness: 3,
                                color: Color.fromARGB(112, 187, 187, 187),
                              ),
                              Row(
                                children: [
                                  Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 0)),
                                  Text(
                                    'Pre-req:',
                                    style: TextStyle(
                                      color: Color.fromRGBO(37, 57, 92, 1.0),
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Math 1550',
                                        style: TextStyle(fontSize: 15)),
                                    style: ElevatedButton.styleFrom(
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      backgroundColor:
                                          Color.fromRGBO(113, 156, 145, 1.0),
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 10),
                                    ),
                                  )
                                ],
                              ),
                              const Divider(
                                height: 25,
                                thickness: 3,
                                color: Color.fromARGB(112, 187, 187, 187),
                              ),
                              Column(
                                children: [
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 50)),
                                  SizedBox(
                                    child: Text(
                                      'This course teaches techniques of integration, parametric equations, analytic geometry, polar coordinates, infinite series, vectors in low dimensions; introduction to differential equations and partial derivatives.',
                                      style: TextStyle(
                                        color: Color.fromRGBO(37, 57, 92, 1.0),
                                        fontSize: 18,
                                      ),
                                    ),
                                    width: 400,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Container(
                    child: Row(
                      children: [
                        Text(
                          'MATH 1552',
                          style: TextStyle(
                            color: Color.fromRGBO(37, 57, 92, 1.0),
                            fontSize: 24,
                          ),
                        ),
                        Expanded(child: Container()),
                        Text(
                          '1',
                          style: TextStyle(
                            color: Color.fromRGBO(37, 57, 92, 1.0),
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                    height: 60,
                    width: 390,
                    decoration: BoxDecoration(
                      color: _elevatedButtonColor,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 15)),
              ),
              SizedBox(
                height: 11,
              ),
              //Engl 1001 button
              InkWell(
                onTap: () {
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: 500,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(233, 233, 233, 1.0),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 15, 0, 3),
                                child: Text(
                                  'ENGL 2000',
                                  style: TextStyle(
                                    color: Color.fromRGBO(37, 57, 92, 1.0),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              Text(
                                'English Composition 2',
                                style: TextStyle(
                                  color: Color.fromRGBO(37, 57, 92, 1.0),
                                  fontSize: 17,
                                ),
                              ),
                              const Divider(
                                height: 25,
                                thickness: 3,
                                color: Color.fromARGB(112, 187, 187, 187),
                              ),
                              Row(
                                children: [
                                  Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 0)),
                                  Column(
                                    children: [
                                      //Time Slot
                                      Icon(Icons.access_time_filled),
                                      Text(
                                        '11:30am -\n12:20pm',
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(37, 57, 92, 1.0),
                                          fontSize: 16,
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 25, vertical: 0)),
                                  Column(
                                    children: [
                                      //Days Slot
                                      Icon(Icons.calendar_month),
                                      Text(
                                        'M, W, F\n',
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(37, 57, 92, 1.0),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 25, vertical: 0)),
                                  Column(
                                    //Professor Slot
                                    children: [
                                      Icon(Icons.account_circle_outlined),
                                      Text(
                                        'Jones, Tanya\n',
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(37, 57, 92, 1.0),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const Divider(
                                height: 25,
                                thickness: 3,
                                color: Color.fromARGB(112, 187, 187, 187),
                              ),
                              Row(
                                children: [
                                  Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 0)),
                                  Text(
                                    'Pre-req:',
                                    style: TextStyle(
                                      color: Color.fromRGBO(37, 57, 92, 1.0),
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text('ENGL 1001',
                                        style: TextStyle(fontSize: 15)),
                                    style: ElevatedButton.styleFrom(
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      backgroundColor:
                                          Color.fromRGBO(113, 156, 145, 1.0),
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 10),
                                    ),
                                  )
                                ],
                              ),
                              const Divider(
                                height: 25,
                                thickness: 3,
                                color: Color.fromARGB(112, 187, 187, 187),
                              ),
                              Column(
                                children: [
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 50)),
                                  SizedBox(
                                    child: Text(
                                      'The purpose of this course is to advance students’ writing skills in a variety of academic, professional, and public genres, with an emphasis on research and argumentation.',
                                      style: TextStyle(
                                        color: Color.fromRGBO(37, 57, 92, 1.0),
                                        fontSize: 18,
                                      ),
                                    ),
                                    width: 400,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Container(
                    child: Row(
                      children: [
                        Text(
                          'ENGL 2000',
                          style: TextStyle(
                            color: Color.fromRGBO(37, 57, 92, 1.0),
                            fontSize: 24,
                          ),
                        ),
                        Expanded(child: Container()),
                        Text(
                          '1',
                          style: TextStyle(
                            color: Color.fromRGBO(37, 57, 92, 1.0),
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                    height: 60,
                    width: 390,
                    decoration: BoxDecoration(
                      color: _elevatedButtonColor,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 15)),
              ),
              SizedBox(
                height: 11,
              ),
              //ASTR 1001 button
              InkWell(
                onTap: () {
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: 500,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(233, 233, 233, 1.0),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 15, 0, 3),
                                child: Text(
                                  'ASTR 1101',
                                  style: TextStyle(
                                    color: Color.fromRGBO(37, 57, 92, 1.0),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              Text(
                                'Fundamental Principles of the Solar System',
                                style: TextStyle(
                                  color: Color.fromRGBO(37, 57, 92, 1.0),
                                  fontSize: 17,
                                ),
                              ),
                              const Divider(
                                height: 25,
                                thickness: 3,
                                color: Color.fromARGB(112, 187, 187, 187),
                              ),
                              Row(
                                children: [
                                  Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 0)),
                                  Column(
                                    children: [
                                      //Time Slot
                                      Icon(Icons.access_time_filled),
                                      Text(
                                        '3:00pm -\n3:50pm',
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(37, 57, 92, 1.0),
                                          fontSize: 16,
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 25, vertical: 0)),
                                  Column(
                                    children: [
                                      //Days Slot
                                      Icon(Icons.calendar_month),
                                      Text(
                                        'M, W, F\n',
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(37, 57, 92, 1.0),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 25, vertical: 0)),
                                  Column(
                                    //Professor Slot
                                    children: [
                                      Icon(Icons.account_circle_outlined),
                                      Text(
                                        'Jackson, Mike\n',
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(37, 57, 92, 1.0),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const Divider(
                                height: 25,
                                thickness: 3,
                                color: Color.fromARGB(112, 187, 187, 187),
                              ),
                              Row(
                                children: [
                                  Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 0)),
                                  Text(
                                    'Pre-req:',
                                    style: TextStyle(
                                      color: Color.fromRGBO(37, 57, 92, 1.0),
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Math 1020 or Math ACT of 21',
                                        style: TextStyle(fontSize: 15)),
                                    style: ElevatedButton.styleFrom(
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      backgroundColor:
                                          Color.fromRGBO(113, 156, 145, 1.0),
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 10),
                                    ),
                                  )
                                ],
                              ),
                              const Divider(
                                height: 25,
                                thickness: 3,
                                color: Color.fromARGB(112, 187, 187, 187),
                              ),
                              Column(
                                children: [
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 50)),
                                  SizedBox(
                                    child: Text(
                                      'This is an introductory astronomy course for the general student with a primary focus in the solar system.',
                                      style: TextStyle(
                                        color: Color.fromRGBO(37, 57, 92, 1.0),
                                        fontSize: 18,
                                      ),
                                    ),
                                    width: 400,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Container(
                    child: Row(
                      children: [
                        Text(
                          'ASTR 1101',
                          style: TextStyle(
                            color: Color.fromRGBO(37, 57, 92, 1.0),
                            fontSize: 24,
                          ),
                        ),
                        Expanded(child: Container()),
                        Text(
                          '1',
                          style: TextStyle(
                            color: Color.fromRGBO(37, 57, 92, 1.0),
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                    height: 60,
                    width: 390,
                    decoration: BoxDecoration(
                      color: _elevatedButtonColor,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 15)),
              ),
              SizedBox(
                height: 11,
              ),
              //Math 1551 button
              InkWell(
                onTap: () {
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: 500,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(233, 233, 233, 1.0),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 15, 0, 3),
                                child: Text(
                                  'ASTR 1108',
                                  style: TextStyle(
                                    color: Color.fromRGBO(37, 57, 92, 1.0),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              Text(
                                'Astronomy Laboratory',
                                style: TextStyle(
                                  color: Color.fromRGBO(37, 57, 92, 1.0),
                                  fontSize: 17,
                                ),
                              ),
                              const Divider(
                                height: 25,
                                thickness: 3,
                                color: Color.fromARGB(112, 187, 187, 187),
                              ),
                              Row(
                                children: [
                                  Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 0)),
                                  Column(
                                    children: [
                                      //Time Slot
                                      Icon(Icons.access_time_filled),
                                      Text(
                                        '1:00pm -\n2:50pm',
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(37, 57, 92, 1.0),
                                          fontSize: 16,
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 35, vertical: 0)),
                                  Column(
                                    children: [
                                      //Days Slot
                                      Icon(Icons.calendar_month),
                                      Text(
                                        'W\n',
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(37, 57, 92, 1.0),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 35, vertical: 0)),
                                  Column(
                                    //Professor Slot
                                    children: [
                                      Icon(Icons.account_circle_outlined),
                                      Text(
                                        'Jackson, Mike\n',
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(37, 57, 92, 1.0),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const Divider(
                                height: 25,
                                thickness: 3,
                                color: Color.fromARGB(112, 187, 187, 187),
                              ),
                              Row(
                                children: [
                                  Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 0)),
                                  Text(
                                    'Pre-req:',
                                    style: TextStyle(
                                      color: Color.fromRGBO(37, 57, 92, 1.0),
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text('ASTR 1101',
                                        style: TextStyle(fontSize: 15)),
                                    style: ElevatedButton.styleFrom(
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      backgroundColor:
                                          Color.fromRGBO(113, 156, 145, 1.0),
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 10),
                                    ),
                                  )
                                ],
                              ),
                              const Divider(
                                height: 25,
                                thickness: 3,
                                color: Color.fromARGB(112, 187, 187, 187),
                              ),
                              Column(
                                children: [
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 50)),
                                  SizedBox(
                                    child: Text(
                                      'Visual observation of positions of celestial bodies with application to star charts and globes; visual and photographic observations will be made using telescopes; provides student with practical observing experience.',
                                      style: TextStyle(
                                        color: Color.fromRGBO(37, 57, 92, 1.0),
                                        fontSize: 18,
                                      ),
                                    ),
                                    width: 400,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Container(
                    child: Row(
                      children: [
                        Text(
                          'ASTR 1108',
                          style: TextStyle(
                            color: Color.fromRGBO(37, 57, 92, 1.0),
                            fontSize: 24,
                          ),
                        ),
                        Expanded(child: Container()),
                        Text(
                          '1',
                          style: TextStyle(
                            color: Color.fromRGBO(37, 57, 92, 1.0),
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                    height: 60,
                    width: 390,
                    decoration: BoxDecoration(
                      color: _elevatedButtonColor,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 15)),
              ),
              SizedBox(
                height: 150,
              ),
              Visibility(
                  visible: _isVisible1,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _hasBeenPressed = !_hasBeenPressed;
                        _elevatedButtonColor =
                            Color.fromRGBO(239, 169, 58, 1.0);
                        _isVisible1 = !_isVisible1;
                        _isVisible2 = !_isVisible2;
                      });
                    },
                    child: Text(
                      'Confirm Schedule',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(239, 169, 58, 1.0),
                      shape: RoundedRectangleBorder(
                          //to set border radius to button
                          borderRadius: BorderRadius.circular(25)),
                      padding:
                          EdgeInsets.symmetric(horizontal: 110, vertical: 20),
                    ),
                  )),
              Visibility(
                  visible: _isVisible2,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _hasBeenPressed = !_hasBeenPressed;
                        _elevatedButtonColor =
                            Color.fromRGBO(113, 156, 145, 1.0);
                        _isVisible2 = !_isVisible2;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Scheduler2()),
                        );
                      });
                    },
                    child: Text(
                      'Advise Me For Next Semester',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(37, 57, 92, 1.0),
                      shape: RoundedRectangleBorder(
                          //to set border radius to button
                          borderRadius: BorderRadius.circular(25)),
                      padding:
                          EdgeInsets.symmetric(horizontal: 55, vertical: 20),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
