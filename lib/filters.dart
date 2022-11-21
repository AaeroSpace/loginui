// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, must_be_immutable, avoid_returning_null_for_void, prefer_function_declarations_over_variables

import 'package:flutter/material.dart';
//import 'package:loginui/schedule_page.dart';
//import 'package:loginui/main.dart';

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
  List<String> selectedItemsList = [];
  String dropdownValue = "Select";
  String selectedText = "";
  List<String> profs = [
    'Bradley McIntosh',
    'Hannah Spearritt',
    'Jo O\'Meara',
    'Jon Lee',
    'Rachel Stevens',
    'Tina Barrett',
    'Paul Cattermole'
  ];
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
            Row(
              children: <Widget>[
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _beenPressedMon
                          ? Color.fromRGBO(37, 57, 92, 1.0).withOpacity(0.05)
                          : Color.fromRGBO(37, 57, 92, 1.0),
                    ),
                    onPressed: () => {
                      setState(() {
                        _beenPressedMon = !_beenPressedMon;
                      })
                    },
                    child: const Text('M'),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _beenPressedTue
                          ? Color.fromRGBO(37, 57, 92, 1.0).withOpacity(0.05)
                          : Color.fromRGBO(37, 57, 92, 1.0),
                    ),
                    onPressed: () => {
                      setState(() {
                        _beenPressedTue = !_beenPressedTue;
                      })
                    },
                    child: const Text('T'),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _beenPressedWed
                          ? Color.fromRGBO(37, 57, 92, 1.0).withOpacity(0.05)
                          : Color.fromRGBO(37, 57, 92, 1.0),
                    ),
                    onPressed: () => {
                      setState(() {
                        _beenPressedWed = !_beenPressedWed;
                      })
                    },
                    child: const Text('W'),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _beenPressedThu
                          ? Color.fromRGBO(37, 57, 92, 1.0).withOpacity(0.05)
                          : Color.fromRGBO(37, 57, 92, 1.0),
                    ),
                    onPressed: () => {
                      setState(() {
                        _beenPressedThu = !_beenPressedThu;
                      })
                    },
                    child: const Text('Th'),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _beenPressedFri
                          ? Color.fromRGBO(37, 57, 92, 1.0).withOpacity(0.05)
                          : Color.fromRGBO(37, 57, 92, 1.0),
                    ),
                    onPressed: () => {
                      setState(() {
                        _beenPressedFri = !_beenPressedFri;
                      })
                    },
                    child: const Text('F'),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Scaffold(
                body: ExpansionTile(
                  iconColor: Colors.grey,
                  title: Text(
                    selectedItemsList.isEmpty ? "Select" : selectedItemsList[0],
                    style: TextStyle(
                      color: Color.fromARGB(255, 50, 74, 113),
                      fontWeight: FontWeight.w400,
                      fontSize: 15.0,
                    ),
                  ),
                  children: <Widget>[
                    SingleChildScrollView(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: profs.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: const EdgeInsets.only(bottom: 8.0),
                            child: _ViewChecklist(
                              item: profs[index],
                              selected: (val) {
                                selectedText = val;
                                if (selectedItemsList.contains(val)) {
                                  selectedItemsList.remove(val);
                                  selectedItemsList.add(val);
                                }
                                widget.selectedFunction(selectedItemsList);
                                setState(() {
                                  dropdownValue = val;
                                });
                              },
                              isSelected:
                                  selectedItemsList.contains(profs[index]),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFEFA93A),
                padding:
                    const EdgeInsets.symmetric(horizontal: 45, vertical: 10),
              ),
              child: const Text(
                'Clear',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              onPressed: () => null,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFEFA93A),
                padding:
                    const EdgeInsets.symmetric(horizontal: 45, vertical: 10),
              ),
              child: const Text(
                'Done',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              onPressed: () => null,
            ),
          ],
        ),
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
