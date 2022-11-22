import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:loginui/Signup_Login.dart';
import 'package:loginui/login_page.dart';
import 'package:loginui/main.dart';

import 'profile_page.dart';
import 'SignUp.dart';
import 'Signup_Login.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  String Classificationvalue = 'Freshman';
  var Classification = [
    'Freshman',
    'Sophmore',
    'Junior',
    'Senior',
  ];
  String StartYearvalue = '2022';
  var StartYear = [
    '2022',
    '2023',
    '2024',
    '2025',
    '2026',
  ];
  String Majorvalue = 'Computer Science';
  var Major = [
    'Computer Science',
    'Chemical Engineering',
    'Mechanical Engineering',
    'Civil Engineering',
    'Computer Engineering',
  ];
  String Concentrationvalue = 'First Discipline';
  var Concentration = [
    'First Discipline',
    'Second Discipline',
    'Third Discipline',
    'Fourth Discipline',
    'Fifth Discipline',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/Background.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Color.fromARGB(83, 37, 57, 92),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                //Image.asset('images/Advisiored (7).png'),

                SizedBox(
                  height: 5,
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
                        hintText: 'University',
                        hintStyle:
                            TextStyle(color: Color.fromARGB(255, 50, 74, 113)),
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
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Classification: '),
                        DropdownButton(
                          hint: Text('Classification: '),
                          value: Classificationvalue,
                          icon: Icon(Icons.arrow_drop_down),
                          iconEnabledColor: Color.fromARGB(255, 252, 186, 3),
                          items: Classification.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              Classificationvalue = newValue!;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Color.fromARGB(255, 73, 101, 149)),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Start Year: '),
                          DropdownButton(
                            hint: Text('Start Year: '),
                            value: StartYearvalue,
                            icon: Icon(Icons.arrow_drop_down),
                            iconEnabledColor: Color.fromARGB(255, 252, 186, 3),
                            items: StartYear.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                StartYearvalue = newValue!;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Color.fromARGB(255, 73, 101, 149)),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Major: '),
                          DropdownButton(
                            hint: Text('Major: '),
                            value: Majorvalue,
                            icon: Icon(Icons.arrow_drop_down),
                            iconEnabledColor: Color.fromARGB(255, 252, 186, 3),
                            items: Major.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                Majorvalue = newValue!;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Color.fromARGB(255, 73, 101, 149)),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Concentration: '),
                          DropdownButton(
                            hint: Text('Concentration: '),
                            value: Concentrationvalue,
                            icon: Icon(Icons.arrow_drop_down),
                            iconEnabledColor: Color.fromARGB(255, 252, 186, 3),
                            items: Concentration.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                Concentrationvalue = newValue!;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                SizedBox(
                  height: 55,
                  width: 200,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      backgroundColor: Color(0xFFEFA93A),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 12),
                    ),
                    child: const Text(
                      'Save Changes',
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
                            builder: (context) => const ProfilePage()),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                SizedBox(
                  height: 55,
                  width: 200,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      backgroundColor: Color(0xFFEFA93A),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 12),
                    ),
                    child: const Text(
                      'Log Out',
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
                            builder: (context) => const SignupLogin()),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
        appBar: AppBar(
            // ignore: prefer_const_literals_to_create_immutables
            toolbarHeight: 120,
            elevation: 0.0,
            backgroundColor: Color.fromARGB(0, 254, 253, 253),
            automaticallyImplyLeading: false,
            title: Row(children: [
              Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_ios_rounded,
                          color: Color.fromARGB(255, 255, 255, 255)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ProfilePage()));
                      },
                    ),
                  )
                ],
              ),
              Column(children: [
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("images/mike.jpg"),
                          fit: BoxFit.cover)),
                ),
                // ElevatedButton(
                //   child: const ImageIcon(
                //     AssetImage('images/mike.jpg'),
                //     size: 100,
                //   ),
                //   onPressed: () {},
                //   style: ElevatedButton.styleFrom(
                //     shape: const CircleBorder(),
                //     padding: const EdgeInsets.all(20),
                //   ),
                // ),
              ]),
              Column(children: [
                SizedBox(
                  width: 30,
                ),
              ]),
              Column(children: [
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: new Text(
                    'Profile Settings',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      height: 1.8,
                      fontSize: 22,
                    ),
                  ),
                ),
              ]),
            ])),
      ),
    );
  }
}
