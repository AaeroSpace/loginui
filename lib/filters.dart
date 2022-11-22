// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, must_be_immutable, avoid_returning_null_for_void, prefer_function_declarations_over_variables

import 'package:flutter/material.dart';
import 'package:loginui/schedule_page.dart';
import 'package:loginui/main.dart';
import 'package:multiselect/multiselect.dart';

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
                onPressed: () {},
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
                              ? Color.fromRGBO(37, 57, 92, 1.0).withOpacity(0.05)
                              : Color.fromRGBO(37, 57, 92, 1.0),
                          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
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
                              ? Color.fromRGBO(37, 57, 92, 1.0).withOpacity(0.05)
                              : Color.fromRGBO(37, 57, 92, 1.0),
                          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
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
                              ? Color.fromRGBO(37, 57, 92, 1.0).withOpacity(0.05)
                              : Color.fromRGBO(37, 57, 92, 1.0),
                          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
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
                              ? Color.fromRGBO(37, 57, 92, 1.0).withOpacity(0.05)
                              : Color.fromRGBO(37, 57, 92, 1.0),
                          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
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
                              ? Color.fromRGBO(37, 57, 92, 1.0).withOpacity(0.05)
                              : Color.fromRGBO(37, 57, 92, 1.0),
                          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
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
                      selected =x;
                    });
                  },
                  options: ['Robbi Cooper' , 'Max Johnson' , 'Quinn Tommy' , 'Ellen Shark', 'Jayme James', 'Nick Lee', 'Duriel Walker'],
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
                      borderRadius: BorderRadius.circular(25)
                  ),
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Filters(selectedFunction: (List<String> List) {  }, ),
                      )
                  );
                },
              ),
                SizedBox(
                  height: 20,
                ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)
                  ),
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Scheduler()),
                  );
                },
              ),

              ],
            ),
            )
      ),
        );
  }
}

class _ViewChecklist extends StatelessWidget {
  String item;
  bool isSelected;
  final Function(String) selected;

  _ViewChecklist(
      {required this.item, required this.isSelected, required this.selected});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(
        children: [
          SizedBox(
            height: 20.0,
            width: 20.0,
            child: Checkbox(
              value: isSelected,
              onChanged: (val) {
                selected(item);
              },
              activeColor: Color.fromARGB(255, 50, 74, 113),
            ),
          ),
          SizedBox(
            width: size.width * .025,
          ),
          Text(
            item,
            style: const TextStyle(
              color: Color.fromARGB(255, 50, 74, 113),
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
        ],
      ),
    );
  }
}