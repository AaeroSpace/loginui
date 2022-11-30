// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:loginui/main.dart';
import 'package:loginui/schedule_page.dart';
import 'package:loginui/filters.dart';
import 'package:loginui/schedule_page2.dart';

import 'profile_page.dart';

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
                      title: Center(child: Text('View Semesters')),
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
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Scheduler2()),
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
                          width: 20,
                        ),
                      ],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  );
                },
                child: Text('1/8'),
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
                'Fall 2022',
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
                      ));
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
                      fontSize: 23,
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
                                  'CSC 1350',
                                  style: TextStyle(
                                    color: Color.fromRGBO(37, 57, 92, 1.0),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              Text(
                                'Computer Science I for CSC Majors',
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
                                          horizontal: 25, vertical: 0)),
                                  Column(
                                    children: const [
                                      //Time Slot
                                      Icon(Icons.access_time_filled),
                                      Text(
                                        '9:20am -\n10:20am',
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
                                    children: const [
                                      //Days Slot
                                      Icon(Icons.calendar_month),
                                      Text(
                                        'M,W,F\n',
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(37, 57, 92, 1.0),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 25, vertical: 0)),
                                  Column(
                                    //Professor Slot
                                    children: const [
                                      Icon(Icons.account_circle_outlined),
                                      Text(
                                        'Skark, E\n',
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(37, 57, 92, 1.0),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
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
                                children: const [
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
                                ],
                              ),
                              const Divider(
                                height: 25,
                                thickness: 3,
                                color: Color.fromARGB(112, 187, 187, 187),
                              ),
                              Column(
                                children: const [
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 50)),
                                  SizedBox(
                                    child: Text(
                                      'This course teached you the fundamentals of algorithm development,'
                                      ' program design and structured programming using an object-oriented'
                                      ' language.',
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
                          'CSC 1350',
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
                                  'Math 1550',
                                  style: TextStyle(
                                    color: Color.fromRGBO(37, 57, 92, 1.0),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              Text(
                                'Differential and Integral Calculus',
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
                                          horizontal: 15, vertical: 0)),
                                  Column(
                                    children: const [
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
                                          horizontal: 20, vertical: 0)),
                                  Column(
                                    children: const [
                                      //Days Slot
                                      Icon(Icons.calendar_month),
                                      Text(
                                        'M, T, W, TH\n',
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
                                          horizontal: 20, vertical: 0)),
                                  Column(
                                    //Professor Slot
                                    children: const [
                                      Icon(Icons.account_circle_outlined),
                                      Text(
                                        'Walker, Duriel\n',
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
                                    child: Text('ALEKS Exam',
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
                                children: const [
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 50)),
                                  SizedBox(
                                    child: Text(
                                      'This course teaches you Limits, derivatives, and integrals of algebraic, exponential, logarithmic, and trigonometric functions, with applications.',
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
                          'MATH 1550',
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
                                  'ENGL 1001',
                                  style: TextStyle(
                                    color: Color.fromRGBO(37, 57, 92, 1.0),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              Text(
                                'English Composition 1',
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
                                    children: const [
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
                                    children: const [
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
                                    children: const [
                                      Icon(Icons.account_circle_outlined),
                                      Text(
                                        'Smith, Mark\n',
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
                                children: const [
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
                                ],
                              ),
                              const Divider(
                                height: 25,
                                thickness: 3,
                                color: Color.fromARGB(112, 187, 187, 187),
                              ),
                              Column(
                                children: const [
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 50)),
                                  SizedBox(
                                    child: Text(
                                      'This is an introductory course in writing, largely expository, accompanied by selected readings. Emphasis on basic rhetorical methods used commonly in exposition.',
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
                          'ENGL 1001',
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
                                  'BIOL 1001',
                                  style: TextStyle(
                                    color: Color.fromRGBO(37, 57, 92, 1.0),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              Text(
                                'General Biology 1',
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
                                    children: const [
                                      //Time Slot
                                      Icon(Icons.access_time_filled),
                                      Text(
                                        '8:30am -\n9:20am',
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
                                    children: const [
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
                                    children: const [
                                      Icon(Icons.account_circle_outlined),
                                      Text(
                                        'Anthony, Susan\n',
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
                                children: const [
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
                                ],
                              ),
                              const Divider(
                                height: 25,
                                thickness: 3,
                                color: Color.fromARGB(112, 187, 187, 187),
                              ),
                              Column(
                                children: const [
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 50)),
                                  SizedBox(
                                    child: Text(
                                      'An introduction to biological principles including scientific method, basic biochemistry, cell structure and function, metabolism, genetics, and evolution.',
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
                          'BIOL 1001',
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
                height: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
