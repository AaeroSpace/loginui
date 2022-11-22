import 'package:flutter/material.dart';
import 'package:loginui/profile_page.dart';
import 'main.dart';
import 'schedule_page.dart';
import 'ForgotPassword1.dart';
import 'SignUp.dart';

class Aboutme extends StatefulWidget {
  const Aboutme({Key? key}) : super(key: key);
  @override
  State<Aboutme> createState() => _Aboutme();
}

class _Aboutme extends State<Aboutme> {
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
                Title(
                    child: Text('Profile Settings',
                        style: TextStyle(
                          fontFamily: 'Fira Sans Condensed',
                          fontSize: 24.0,
                          color: Colors.white,
                        )),
                    color: Colors.white),

                SizedBox(
                  height: 10,
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
                //  Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   // ignore: prefer_const_literals_to_create_immutables
                //   children: [
                //     Text(
                //       "Don't have an Account?",
                //       style: TextStyle(
                //         color: Colors.white,
                //         fontWeight: FontWeight.bold,
                //         fontSize: 15,
                //       ),
                //     ),
                //     TextButton(
                //       child: Text('Sign Up'),
                //       style: TextButton.styleFrom(
                //         primary: Color.fromRGBO(113, 156, 145, 1.0),
                //       ),
                //       onPressed: () {
                //         Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //               builder: (context) => const SignUp()),
                //         );
                //       },
                //     )
                //   ],
                // ),
                SizedBox(
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

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      backgroundColor: Color(0xFFEFA93A),
                      padding:
                          const EdgeInsets.symmetric(horizontal: 80, vertical: 12),
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
