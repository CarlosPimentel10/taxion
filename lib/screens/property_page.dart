import 'package:flutter/material.dart';
import 'package:taxion/screens/house_details.dart';

class PropertyTax extends StatelessWidget {
  const PropertyTax({Key? key}) : super(key: key);

  static const String _title = 'Property Tax';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const Center(
          child: PropertyStatefulWidget(),
        ),
      ),
    );
  }
}

class PropertyStatefulWidget extends StatefulWidget {
  const PropertyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<PropertyStatefulWidget> createState() => _PropertyStatefulWidgetState();
}

class _PropertyStatefulWidgetState extends State<PropertyStatefulWidget> {
  String dropdownValue = 'Select Property';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_drop_down_circle),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
        switch (dropdownValue) {
          case 'House':
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HouseTax(),
              ),
            );
        }
      },
      items: <String>['Select Property', 'House', 'Wharehouse', 'Flat']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
