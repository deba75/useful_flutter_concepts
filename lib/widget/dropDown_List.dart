import 'package:flutter/material.dart';

class DropDownList extends StatefulWidget {
  const DropDownList({super.key});

  @override
  State<DropDownList> createState() => _DropDownListState();
}

class _DropDownListState extends State<DropDownList> {
  String selectedvalue = 'Orange'; // Set a valid initial value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drop Down List'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: 70,
            color: Colors.green,
            width: MediaQuery.of(context).size.width,
            child: DropdownButton<String>(
              dropdownColor: Colors.blueAccent.shade100,
              isExpanded: true,
              value: selectedvalue,
              items: <String>[
                'Orange',
                'Apple',
                'Banana',
                'Mango',
                'Grapes',
                'fruit1',
                'fruit2',
                'fruit3',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedvalue = newValue!; // Update the selected value
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
