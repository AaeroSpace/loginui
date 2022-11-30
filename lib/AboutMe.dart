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
    'Sophomore',
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
        backgroundColor: const Color.fromARGB(83, 37, 57, 92),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Title(
                    color: Colors.white,
                    child: const Text('Profile Settings',
                        style: TextStyle(
                            fontFamily: 'Fira Sans Condensed',
                            fontSize: 24.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold))),

                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(color: const Color.fromARGB(255, 73, 101, 149)),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: const TextField(
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
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(color: const Color.fromARGB(255, 73, 101, 149)),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text('Classification: '),
                        DropdownButton(
                          hint: const Text('Classification: '),
                          value: Classificationvalue,
                          icon: const Icon(Icons.arrow_drop_down),
                          iconEnabledColor: const Color.fromARGB(255, 252, 186, 3),
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
                const SizedBox(
                  height: 20,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: const Color.fromARGB(255, 73, 101, 149)),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text('Start Year: '),
                          DropdownButton(
                            hint: const Text('Start Year: '),
                            value: StartYearvalue,
                            icon: const Icon(Icons.arrow_drop_down),
                            iconEnabledColor: const Color.fromARGB(255, 252, 186, 3),
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
                const SizedBox(
                  height: 20,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: const Color.fromARGB(255, 73, 101, 149)),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text('Major: '),
                          DropdownButton(
                            hint: const Text('Major: '),
                            value: Majorvalue,
                            icon: const Icon(Icons.arrow_drop_down),
                            iconEnabledColor: const Color.fromARGB(255, 252, 186, 3),
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
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: const Color.fromARGB(255, 73, 101, 149)),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text('Concentration: '),
                          DropdownButton(
                            hint: const Text('Concentration: '),
                            value: Concentrationvalue,
                            icon: const Icon(Icons.arrow_drop_down),
                            iconEnabledColor: const Color.fromARGB(255, 252, 186, 3),
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
                const SizedBox(
                  height: 20,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      backgroundColor: const Color(0xFFEFA93A),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 80, vertical: 12),
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
