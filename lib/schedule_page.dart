// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_final_fields, prefer_interpolation_to_compose_strings, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
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
        toolbarHeight: 150,
        leading: Column(
          children: [
            IconButton(
              icon: Icon(Icons.account_circle_rounded),
              onPressed: () {},
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.end,
        ),
        title: Container(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              TextButton(
                onPressed: () {},
                child: Text('1'),
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
                onPressed: () {},
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
                  child: Text('Class'),
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  width: 90,
                ),
                Expanded(
                    child: Container(
                  height: 50,
                  width: 30,
                )),
                Container(
                  child: Text('Section #'),
                  width: 80,
                )
              ]),
              //CSC 1351 button
              InkWell(
                onTap: () {
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const Text('Modal BottomSheet'),
                              ElevatedButton(
                                child: const Text('Close BottomSheet'),
                                onPressed: () => Navigator.pop(context),
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
                        Text('CSC 1351'),
                        Expanded(child: Container()),
                        Text('1'),
                      ],
                    ),
                    height: 50,
                    width: 380,
                    decoration: BoxDecoration(
                      color: _elevatedButtonColor,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 15)),
              ),
              SizedBox(
                height: 6,
              ),
              //Math 1551 button
              InkWell(
                onTap: () {
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: 200,
                        color: Color.fromRGBO(233, 233, 233, 1.0),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const Text('Modal BottomSheet'),
                              ElevatedButton(
                                child: const Text('Close BottomSheet'),
                                onPressed: () => Navigator.pop(context),
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
                        Text('MATH 1551'),
                        Expanded(child: Container()),
                        Text('1'),
                      ],
                    ),
                    height: 50,
                    width: 380,
                    decoration: BoxDecoration(
                      color: _elevatedButtonColor,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 15)),
              ),
              SizedBox(
                height: 6,
              ),
              //Engl 1001 button
              InkWell(
                onTap: () {
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: 200,
                        color: Color.fromRGBO(233, 233, 233, 1.0),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const Text('Modal BottomSheet'),
                              ElevatedButton(
                                child: const Text('Close BottomSheet'),
                                onPressed: () => Navigator.pop(context),
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
                        Text('ENGL 1001'),
                        Expanded(child: Container()),
                        Text('1'),
                      ],
                    ),
                    height: 50,
                    width: 380,
                    decoration: BoxDecoration(
                      color: _elevatedButtonColor,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 15)),
              ),
              SizedBox(
                height: 6,
                width: 380,
              ),
              //ASTR 1001 button
              InkWell(
                onTap: () {
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: 200,
                        color: Color.fromRGBO(233, 233, 233, 1.0),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const Text('Modal BottomSheet'),
                              ElevatedButton(
                                child: const Text('Close BottomSheet'),
                                onPressed: () => Navigator.pop(context),
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
                        Text('ASTR 1001'),
                        Expanded(child: Container()),
                        Text('1'),
                      ],
                    ),
                    height: 50,
                    width: 380,
                    decoration: BoxDecoration(
                      color: _elevatedButtonColor,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 15)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
