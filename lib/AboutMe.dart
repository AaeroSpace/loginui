import 'package:flutter/material.dart';
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
    'Compter Science',
    'Chemical Engineering',
    'Mechanical Engineering',
    'Civil Engineering',
    'Computer Engineering',
  ];
  String Concentrationvalue = 'Item 1';
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
                Title(child: Text('Profile Settings'), color: Colors.white),

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
                    child: DropdownButton(
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
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Center(
                    child: DropdownButton(
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
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Center(
                    child: DropdownButton(
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
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Center(
                    child: DropdownButton(
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
                  ),
                ),
                SizedBox(
                  height: 15,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: Color(0xFFEFA93A),
                      padding:
                          EdgeInsets.symmetric(horizontal: 45, vertical: 10),
                    ),
                    child: Text(
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
                            builder: (context) => const Aboutme()),
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
