// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:loginui/login_page.dart';
import 'package:loginui/main.dart';
import 'package:loginui/schedule_page.dart';

import 'Signup_Login.dart';
import 'settings.dart';
import 'Fall22done.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/lsu-6288-campus-before-storm.jpg'),
                fit: BoxFit.cover),
          ),
          child: SafeArea(
              child: Column(children: [
            // mainAxisAlignment: MainAxisAlignment.end,
            Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  SizedBox(
                    height: 50,
                  ),
                ]),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                SizedBox(
                  height: 60,
                  width: 335,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(37, 57, 92, 1.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    ),
                    child: Text(
                      'CSC Second Discipline',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 27,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Fall22()),
                      );
                    },
                  ),
                ),
              ],
            ),
            Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  SizedBox(
                    height: 30,
                  ),
                ]),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                SizedBox(
                  height: 60,
                  width: 335,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(37, 57, 92, 1.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    ),
                    child: Text(
                      'Freshman',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 27,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Fall22()),
                      );
                    },
                  ),
                ),
              ],
            ),
            Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  SizedBox(
                    height: 30,
                  ),
                ]),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                SizedBox(
                  height: 60,
                  width: 335,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(37, 57, 92, 1.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    ),
                    child: Text(
                      'Started: Fall 2022',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 27,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Fall22()),
                      );
                    },
                  ),
                ),
              ],
            ),
            Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  SizedBox(
                    height: 70,
                  ),
                ]),

            Column(children: [
              Center(
                child: SizedBox(
                  height: 70,
                  width: 250,
                  child: Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFEFA93A),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      ),
                      child: Text(
                        'Go to Schedule',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
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
              )
            ]),
          ]))),
      appBar: AppBar(
        toolbarHeight: 250,
        automaticallyImplyLeading: false,
        title: Container(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                'Welcome',
                style: TextStyle(
                  color: Color.fromRGBO(37, 57, 92, 1.0),
                  height: 1.8,
                  fontSize: 20,
                ),
              ),
              CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage('images/mike.jpg'),
              ),
              Text(
                'Mike Tiger',
                style: TextStyle(
                  color: Color.fromRGBO(37, 57, 92, 1.0),
                  height: 1.4,
                  fontSize: 40,
                ),
              ),
              Text(
                'Louisiana State University',
                style: TextStyle(
                  color: Color.fromRGBO(37, 57, 92, 1.0),
                  height: 1.0,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // IconButton(
              //   icon: Icon(Icons.settings),
              //   color: Color.fromRGBO(37, 57, 92, 1.0),
              //   onPressed: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) => const SettingsPage()));
              //   },
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      icon: Icon(Icons.settings,
                          color: Color.fromRGBO(37, 57, 92, 1.0)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SettingsPage()));
                      },
                    )),
              )
            ],
          ),
        ],
        centerTitle: true,
        backgroundColor: Color.fromARGB(180, 255, 255, 255),
      ),
    );
  }
}
