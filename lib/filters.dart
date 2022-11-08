import 'package:flutter/material.dart';
import 'package:loginui/schedule_page.dart';
import 'package:loginui/main.dart';

class Filters extends StatefulWidget {
  const Filters({Key? key}) : super(key: key);

  @override
  State<Filters> createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  String dropdownValue = "";
  var profs = [
    'Bradley McIntosh',
    'Hannah Spearritt',
    'Jo O\'Meara',
    'Jon Lee',
    'Rachel Stevens',
    'Tina Barrett',
    'Paul Cattermole'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(37, 57, 92, 1.0),
          title: const Text('Fall 2022'),
        ),
        body: SafeArea(
          child: Center(
              child: Column(
            children: [
              //days of the week box TBA
              DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.arrow_downward),
                items: profs.map<DropdownMenuItem<String>>((String profs) {
                  return DropdownMenuItem(
                    value: profs,
                    child: Text(profs),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
              ),
            ],
          )),
        ),
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Scheduler() //change later
                      ),
                );
              },
            ),
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Scheduler() //change later
                      ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
