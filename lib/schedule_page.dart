// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:loginui/main.dart';
import 'login_page.dart';

void main() {
  runApp(const MyApp());
}

class Scheduler extends StatelessWidget {
  const Scheduler({Key? key}) : super(key: key);

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
                  'CSC 1351    ',
                  style: TextStyle(
                    color: Color.fromRGBO(37, 57, 92, 1.0),
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('CSC 1351'),
                      content: Text(
                          'Stuff \n \n \n \n stuff stuff stuff stuff stuff stuff stuff stuff stuff stuff stuff stuff stuff stuff stuff'),
                      actions: [
                        TextButton(
                          child: Text('Ongoing'),
                          onPressed: () => Navigator.pop(context),
                        ),
                        TextButton(
                          child: Text('Done'),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(233, 233, 233, 1.0),
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
                      content: Text(
                          'Stuff \n \n \n \n stuff stuff stuff stuff stuff stuff stuff stuff stuff stuff stuff stuff stuff stuff stuff'),
                      actions: [
                        TextButton(
                          child: Text('Ongoing'),
                          onPressed: () => Navigator.pop(context),
                        ),
                        TextButton(
                          child: Text('Done'),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(233, 233, 233, 1.0),
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
                          child: Text('Ongoing'),
                          onPressed: () => Navigator.pop(context),
                        ),
                        TextButton(
                          child: Text('Done'),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(233, 233, 233, 1.0),
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
                          child: Text('Ongoing'),
                          onPressed: () => Navigator.pop(context),
                        ),
                        TextButton(
                          child: Text('Done'),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(233, 233, 233, 1.0),
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
                          child: Text('Ongoing'),
                          onPressed: () => Navigator.pop(context),
                        ),
                        TextButton(
                          child: Text('Done'),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(233, 233, 233, 1.0),
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
