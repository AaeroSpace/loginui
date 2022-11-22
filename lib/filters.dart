// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, must_be_immutable, avoid_returning_null_for_void, prefer_function_declarations_over_variables, prefer_const_literals_to_create_immutables, unused_local_variable, import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:loginui/profile_page.dart';
import 'package:loginui/schedule_page.dart';
import 'package:loginui/main.dart';
import 'package:multiselect/multiselect.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  final Function(List<String>) selectedFunc = (List<String> list) {};
  runApp(Filters(selectedFunction: selectedFunc));
}

class Filters extends StatefulWidget {
  final Function(List<String>) selectedFunction;
  //const Filters({Key? key}) : super(key: key);

  Filters({required this.selectedFunction});

  @override
  State<Filters> createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  List<String> selected = [];
  List<String> selectedItemsList = [];
  String dropdownValue = "Select";
  String selectedText = "";

  bool _beenPressedMon = false;
  bool _beenPressedTue = false;
  bool _beenPressedWed = false;
  bool _beenPressedThu = false;
  bool _beenPressedFri = false;

  @override
  void initState() {
    super.initState();
    _loadFilters();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            toolbarHeight: 150,
            leading: Column(
              mainAxisAlignment: MainAxisAlignment.end,
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
            ),
            title: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      foregroundColor: Color.fromRGBO(37, 57, 92, 1.0),
                      backgroundColor: Colors.white,
                      textStyle: TextStyle(
                        height: 1.2,
                        fontSize: 40,
                      ),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      )),
                  child: Text('1'),
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
            actions: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: Icon(Icons.more_vert),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
            centerTitle: true,
            backgroundColor: Color.fromRGBO(37, 57, 92, 1.0),
          ),
          body: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Filters',
                  style: TextStyle(
                    height: 1.6,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(37, 57, 92, 1.0),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  height: 25,
                  thickness: 3,
                  color: Color.fromRGBO(37, 57, 92, 1.0).withOpacity(0.4),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Pick Days You Do Not Want to Take Class',
                  style: TextStyle(
                    height: 1.6,
                    fontSize: 18,
                    color: Color.fromRGBO(37, 57, 92, 1.0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: _beenPressedMon
                              ? Color.fromRGBO(37, 57, 92, 1.0)
                                  .withOpacity(0.05)
                              : Color.fromRGBO(37, 57, 92, 1.0),
                          padding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                        ),
                        onPressed: () => {
                          setState(() {
                            _beenPressedMon = !_beenPressedMon;
                          })
                        },
                        child: Text(
                          'M',
                          style: TextStyle(
                            height: 1.6,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: _beenPressedTue
                              ? Color.fromRGBO(37, 57, 92, 1.0)
                                  .withOpacity(0.05)
                              : Color.fromRGBO(37, 57, 92, 1.0),
                          padding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                        ),
                        onPressed: () => {
                          setState(() {
                            _beenPressedTue = !_beenPressedTue;
                          })
                        },
                        child: Text(
                          'T',
                          style: TextStyle(
                            height: 1.6,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: _beenPressedWed
                              ? Color.fromRGBO(37, 57, 92, 1.0)
                                  .withOpacity(0.05)
                              : Color.fromRGBO(37, 57, 92, 1.0),
                          padding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                        ),
                        onPressed: () => {
                          setState(() {
                            _beenPressedWed = !_beenPressedWed;
                          })
                        },
                        child: Text(
                          'W',
                          style: TextStyle(
                            height: 1.6,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: _beenPressedThu
                              ? Color.fromRGBO(37, 57, 92, 1.0)
                                  .withOpacity(0.05)
                              : Color.fromRGBO(37, 57, 92, 1.0),
                          padding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                        ),
                        onPressed: () => {
                          setState(() {
                            _beenPressedThu = !_beenPressedThu;
                          })
                        },
                        child: Text(
                          'TH',
                          style: TextStyle(
                            height: 1.6,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: _beenPressedFri
                              ? Color.fromRGBO(37, 57, 92, 1.0)
                                  .withOpacity(0.05)
                              : Color.fromRGBO(37, 57, 92, 1.0),
                          padding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                        ),
                        onPressed: () => {
                          setState(() {
                            _beenPressedFri = !_beenPressedFri;
                          })
                        },
                        child: Text(
                          'F',
                          style: TextStyle(
                            height: 1.6,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  height: 25,
                  thickness: 3,
                  color: Color.fromRGBO(37, 57, 92, 1.0).withOpacity(0.4),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Pick Professors You Do Not Want to Take',
                  style: TextStyle(
                    height: 1.6,
                    fontSize: 18,
                    color: Color.fromRGBO(37, 57, 92, 1.0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: DropDownMultiSelect(
                        onChanged: (List<String> x) {
                          setState(() {
                            selected = x;
                          });
                        },
                        options: [
                          'Robbi Cooper',
                          'Max Johnson',
                          'Quinn Tommy',
                          'Ellen Shark',
                          'Jayme James',
                          'Nick Lee',
                          'Duriel Walker'
                        ],
                        selectedValues: selected,
                        whenEmpty: '  List of Professors',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 100,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    backgroundColor: Color(0xFFEFA93A),
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 12),
                  ),
                  child: Text(
                    'Clear',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () {
                    _clearFilters();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Filters(
                            selectedFunction: (List<String> List) {},
                          ),
                        ));
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    backgroundColor: Color(0xFFEFA93A),
                    padding: EdgeInsets.symmetric(horizontal: 81, vertical: 12),
                  ),
                  child: Text(
                    'Save',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () {
                    _saveFilters();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Scheduler()),
                    );
                  },
                ),
              ],
            ),
          )),
    );
  }

  _saveFilters() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('_beenPressedMon', _beenPressedMon);
    prefs.setBool('_beenPressedTue', _beenPressedTue);
    prefs.setBool('_beenPressedWed', _beenPressedWed);
    prefs.setBool('_beenPressedThu', _beenPressedThu);
    prefs.setBool('_beenPressedFri', _beenPressedFri);
    prefs.setStringList('selected', selected);
  }

  _loadFilters() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _beenPressedMon = prefs.getBool('_beenPressedMon') ?? false;
      _beenPressedTue = prefs.getBool('_beenPressedTue') ?? false;
      _beenPressedWed = prefs.getBool('_beenPressedWed') ?? false;
      _beenPressedThu = prefs.getBool('_beenPressedThu') ?? false;
      _beenPressedFri = prefs.getBool('_beenPressedFri') ?? false;
      selected = prefs.getStringList('selected') ?? [];
    });
  }

  _clearFilters() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('_beenPressedMon', false);
    prefs.setBool('_beenPressedTue', false);
    prefs.setBool('_beenPressedWed', false);
    prefs.setBool('_beenPressedThu', false);
    prefs.setBool('_beenPressedFri', false);
    prefs.setStringList('selected', []);
  }
}
